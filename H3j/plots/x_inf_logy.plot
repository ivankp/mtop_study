input = data/inf.root

logy = true
legend = true

regex = sng/^(x[H0-9])_HT\[[^_]*\)(.*)/\1\2/scale=1,width

regex = gt/^(x[H0-9])_maxdy\[([.0-9]+),([.0-9]+)\).*/\1 : \2 **leq max **Deltay < \3

regex = nl/.*HT\[([.0-9]+),([.0-9]+)\).*/\1 **leq HT < \2
regex = tx/^(x[H0-9]).*/\1
regex = xy/x(.*)/d**sigma\/dx_{\1}  [pb]
regex = t/^(.*)_maxdy([.0-9]+)/\1 : max **Deltay < \2

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

