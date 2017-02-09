input = data/inf.root
input = data/finite.root

#logy = true
legend = true

regex = smn/hgam_(.+)/\1/scale=1,width
regex = ng
regex = nt
regex = fl/data\/(.*).root$/\1

regex = tx/(.+_)?(pT|HT|yAbs|Dphi|Dy|m)(_.+)?/\2
regex = x1m/pT/p_{T}  [GeV]
regex = x1m/HT/H_{T}  [GeV]
regex = x1m/yAbs/|y|
regex = x1m/Dphi/|**Delta**phi|
regex = x1m/Dy/|**Deltay|
regex = x1m/m/m  [GeV]

regex = ty/(.+_)?(pT|HT|yAbs|Dphi|Dy|m)(_.+)?/\2
regex = y1m/pT/d**sigma\/dp_{T}  [pb\/GeV]
regex = y1m/HT/d**sigma\/dH_{T}  [pb\/GeV]
regex = y1m/yAbs/d**sigma\/d|y|  [pb]
regex = y1m/Dphi/d**sigma\/d|**Delta**phi|  [pb]
regex = y1m/Dy/d**sigma\/d|**Deltay|  [pb]
regex = y1m/m/d**sigma\/dm  [pb\/GeV]


margins = 0.1:0.05:0.1:0.09
ytitle-offset = 1.4
xtitle-offset = 1.25
