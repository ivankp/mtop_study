input = data/ratio.root

logy = true
legend = true

regex = sng/^(|[gq][gq]_)(x[H12])_HT_\[[^_]*\)(.*)/\1\2\3

regex = gt/^([gq][gq])_(.*)/\1  \2

regex = t/^(.*)_maxdy_\[([0-9]+),([0-9]+)\).*/\1 : \2 **leq max **Deltay < \3

regex = nl/.*HT_\[([0-9]+),([0-9]+)\).*/\1 **leq HT < \2
regex = x/.*(x[H12])/\1
regex = y/.*/infinite \/ finite

yrange = 0.2:5
mlogy = true
noexpy = true

hline = 1

margins = 0.09:0.05:0.1:0.09
ytitle-offset = 1.1

colors = 56
colors = 61
colors = 65
colors = 71
colors = 75
colors = 81
colors = 85
colors = 91
colors = 95
colors = 100

