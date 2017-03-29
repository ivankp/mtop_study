input = data/ratio.root

logz = true

regex = sn/^x[H12]_x[H12]_HT\[[^_]*\)//draw=colz2
regex = ng

regex = gx/^(x[H12])_(x[H12]).*/\1
regex = gy/^(x[H12])_(x[H12]).*/\2

regex = gt

zrange = 0.2:5
mlogz = true
noexpz = true

regex = z/.*/infinite \/ finite

margins = 0.09:0.125:0.1:0.09
ytitle-offset = 1.1
