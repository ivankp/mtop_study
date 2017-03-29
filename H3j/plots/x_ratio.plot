input = data/ratio.root

logy = true
legend = true

regex = sng/^([gq][gq]_)?(x[H0-9])_HT\[[^_]*\)(.*)/\1\2\3

regex = gt/^([gq][gq])_(.*)/\1  \2

regex = t/^(.*)_maxdy([.0-9]+)/\1 : max **Deltay < \2

regex = nl/.*HT\[([0-9]+),([0-9]+)\).*/\1 **leq HT < \2
regex = gx/(.*_)?(x[H0-9])(_.*)?/\2
regex = y/.*/infinite \/ finite

yrange = 0.2:5
mlogy = true
noexpy = true

hline = 1

margins = 0.09:0.05:0.1:0.09
ytitle-offset = 1.1

colors = 51
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

