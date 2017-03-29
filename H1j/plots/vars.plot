input = data/inf.root
input = data/finite.root

logy = true
legend = true

regex = smn/(HT|(H|jet[12])_(pT|eta|y)|jj(fb)?_(dpT|dy|dphi|mass)|Hjets_mass(_close)?)//scale=1,width
regex = ng
regex = nt
regex = fl/data\/(.*).root$/\1

regex = ty/HT/d**sigma\/dH_{T}  [pb\/GeV]
regex = y/(.*)_pT/\1  d**sigma\/dp_{T}  [pb\/GeV]
regex = y/(.*)_y/\1  d**sigma\/dy  [pb]
regex = y/(.*)_eta/\1  d**sigma\/d**eta  [pb]
regex = y/(.*)_mass(_close)?/\1  d**sigma\/dm  [pb\/GeV]
regex = y/^H( )/Higgs\1
regex = y/(.*)_dpT/d**sigma\/d**Deltap_{T}  [pb\/GeV]
regex = y/(.*)_dy/d**sigma\/d**Deltay  [pb]
regex = y/(.*)_dphi/d**sigma\/d**Delta**phi  [pb]

regex = tx/HT/H_{T} [GeV]
regex = x/(.*)_pT/\1 p_{T} [GeV]
regex = x/(.*)_y/\1 y
regex = x/(.*)_eta/\1 **eta
regex = x/^H( )/Higgs\1
regex = x/(.*)_dpT/\1 **Deltap_{T} [GeV]
regex = x/(.*)_dy/\1 **Deltay
regex = x/(.*)_dphi/\1 **Delta**phi
regex = x/jj(fb)?_mass/Forward-backward dijet mass [GeV]
regex = x/Hjets_mass(_close)?/Mass of Higgs + all jets system [GeV]
regex = x/^jj(fb)?/Forward-backward jets

margins = 0.09:0.05:0.1:0.09
ytitle-offset = 1.1
xtitle-offset = 1.25
