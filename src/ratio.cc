#include <iostream>
#include <cmath>

#include <TFile.h>
#include <TDirectory.h>
#include <TKey.h>
#include <TH1.h>

#include "exception.hh"

using std::cout;
using std::cerr;
using std::endl;

#define test(var) \
    std::cout <<"\033[36m"<< #var <<"\033[0m"<< " = " << var << std::endl;

template <typename T> [[ gnu::const ]]
inline T sq(T x) noexcept { return x*x; }
template <typename T, typename... TT> [[ gnu::const ]]
inline T sq(T x, TT... xx) noexcept { return sq(x)+sq(xx...); }

template <typename H>
inline unsigned nbins(const H* h) noexcept {
  return h->GetNbinsX();
}
template <typename H1, typename H2, typename... Hs>
inline unsigned nbins(const H1* h1, const H2* h2, const Hs*... hs) {
  const unsigned n1 = nbins(h1);
  const unsigned n2 = nbins(h2,hs...);
  if (n1!=n2) throw ivanp::exception(
    "histogram ",h2->GetName()," has ",n2," bins instead of expected ",n1);
  return n1;
}

TH1* ratio(const TH1* ha, const TH1* hb) { // a/b
  const unsigned n = nbins(ha,hb);
  auto *ax = ha->GetXaxis();
  TH1D *hr = nullptr;
  if (ax->GetXbins()->GetSize()) {
    hr = new TH1D(ha->GetName(),"",n,ax->GetXbins()->GetArray());
  } else {
    hr = new TH1D(ha->GetName(),"",n,ax->GetXmin(),ax->GetXmax());
  }

  for (unsigned i=0, _n=n+2; i<_n; ++i) {
    const double a = ha->GetBinContent(i);
    const double b = hb->GetBinContent(i);
    if (!(std::isnormal(a) && std::isnormal(b))) continue;
    const double r = a/b;
    hr->SetBinContent(i,r);
    const double ae = ha->GetBinError(i);
    const double be = hb->GetBinError(i);
    hr->SetBinError(i,r*std::sqrt(sq(ae/a,be/b)));
  }
  return hr;
}

template <class T>
inline T* get(TDirectory* dir, const char* name) {
  T *obj = nullptr;
  dir->GetObject(name,obj);
  if (obj) return obj;
  else throw ivanp::exception("No object ",name," in ",dir->GetName());
}

void dir_loop(TDirectory* dir1, TDirectory* dir2) {
  auto *cur_dir = gDirectory;
  TIter next(dir1->GetListOfKeys());
  TKey *key;
  while ((key = static_cast<TKey*>(next()))) {
    auto *obj = key->ReadObj();
    if (obj->InheritsFrom(TDirectory::Class())) {
      auto *dir1_down = static_cast<TDirectory*>(obj);
      auto *dir1_down_name = dir1_down->GetName();
      cur_dir->mkdir(dir1_down_name);
      cur_dir->cd(dir1_down_name);
      cout << "\033[34mDirectory\033[0m: " << dir1_down_name << endl;
      dir_loop(dir1_down, get<TDirectory>(dir2,dir1_down_name));
      cur_dir->cd();
    } else if (obj->InheritsFrom(TH1::Class())) {
      auto *h1 = static_cast<TH1*>(obj);
      auto *h2 = get<TH1>(dir2,h1->GetName());

      // auto *h = static_cast<TH1*>(h1->Clone());
      // h->Divide(h1, h2,
      //   1./h1->Integral("width"),
      //   1./h2->Integral("width"));
      auto *h = ratio(h1,h2);
      h->SetDirectory(cur_dir);

      cout << "\033[34mHist\033[0m: " << h->GetName() << endl;
    }
  }
};

int main(int argc, char** argv) {
  auto fin1 = std::make_unique<TFile>(argv[1],"read");
  if (fin1->IsZombie()) return 1;
  auto fin2 = std::make_unique<TFile>(argv[2],"read");
  if (fin2->IsZombie()) return 1;
  auto fout = std::make_unique<TFile>(argv[3],"recreate");
  if (fout->IsZombie()) return 1;

  dir_loop(fin1.get(),fin2.get());

  fout->Write();

  return 0;
}
