input = data/ratio.root

logz = true

regex = sn/^maxdy_maxdphi_HT\[.*//draw=colz2
regex = ng
regex = gt

zrange = 0.2:5
mlogz = true
noexpz = true

regex = x/^.*/max **Deltay
regex = y/^.*/max **Delta**phi
regex = z/.*/infinite \/ finite

margins = 0.09:0.14:0.1:0.09
ytitle-offset = 1.1
