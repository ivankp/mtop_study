input = data/ratio.root

logy = true
legend = br

regex = sng/^(H|jet[1-3])_pT_(x[H12])\[[^_]*\)/\1_\2

regex = gt/(.*)_(.*)/\1 pT -- \2

regex = nl/.*_(x[H12])\[([.0-9]+),([.0-9]+)\)/\2 **leq \1 < \3

regex = y/.*/infinite \/ finite
regex = nx/^([^_]*)_.*/\1 pT [GeV]
regex = x/^H( )/Higgs\1

yrange = 0.05:20
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

