input = data/ratio.root

#logy = true

regex = smn/hgam_(.+)/\1
regex = ng
regex = y/^.*/infinite \/ finite

regex = gx/(.+_)?(pT|HT|yAbs|Dphi|Dy|m)(_.+)?/\2
regex = x1m/pT/p_{T}  [GeV]
regex = x1m/HT/H_{T}  [GeV]
regex = x1m/yAbs/|y|
regex = x1m/Dphi/|**Delta**phi|
regex = x1m/Dy/|**Deltay|
regex = x1m/m/m  [GeV]
regex = gmx/Dphi_yy_jj/**pi **minus |**Delta**phi|

regex = gt/^.*/HGam  &

margins = 0.1:0.05:0.1:0.09
ytitle-offset = 1.4
xtitle-offset = 1.25

