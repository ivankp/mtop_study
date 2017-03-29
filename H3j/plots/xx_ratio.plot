input = data/ratio.root

logz = true

regex = sn/^x[H0-9]_x[H0-9]_HT\[[^_]*\)//draw=colz2
regex = ng

regex = gx/^(x[H0-9])_(x[H0-9]).*/\1
regex = gy/^(x[H0-9])_(x[H0-9]).*/\2

regex = gt

#zrange = 0.2:5
zrange = 0.5:10
mlogz = true
noexpz = true

regex = z/.*/infinite \/ finite

margins = 0.09:0.125:0.1:0.09
ytitle-offset = 1.1
