input = data/inf.root
input = data/finite.root

logy = true
legend = true

regex = sn/^[^_]*_pT_x[^_]_.*//scale=1,width
regex = ng
regex = nt/^([^_]*_pT)_(x[^_])_([.0-9]+)-([.0-9]+)/\1 : \3 < \2 < \4
regex = fl/data\/(.*).root$/\1
regex = y/^.*/d**sigma\/dp_{T} [pb\/GeV]
regex = nx/^([^_]*)_.*/\1 pT [GeV]
regex = x/^H( )/Higgs\1

margins = 0.09:0.05:0.1:0.09
ytitle-offset = 1.1
