input = data/ratio.root

# logy = true
# legend = true

regex = sn/^x1_.*
regex = ng
regex = nt/(x[H12])_HT_([0-9]+)-([0-9]+)/\1 : \2 < HT < \3
regex = tt/_dycut_0/
regex = t/_dycut_([^0])/, dy < \1
regex = y/^.*/infinite \/ finite
regex = x/^.*/y

margins = 0.09:0.05:0.1:0.09
ytitle-offset = 1.1

