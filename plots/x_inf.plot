input = data/inf.root

# logy = true
legend = true

# regex = sng/^(x[H12])_.*_(dycut_\d)/\1_\2
regex = sng/^(x[H12])_.*_(dycut_\d)/\1_\2/scale=1,width
regex = nl/.*HT_([0-9]+)-([0-9]+).*/\1 < HT < \2
regex = gt/_dycut_0/
regex = t/_dycut_(\d)/ : dy < \1
regex = y/^.*/d**sigma\/dy [pb]
regex = x/^.*/y

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

