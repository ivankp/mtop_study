input = data/inf.root
input = data/finite.root

logy = true
legend = true

regex = sng/^([gq][gq]_)?(x2_HT\[[^_]*\)(_maxdy[^_]+)?)/\2/scale=1,width
regex = gt
regex = fl/data\/(.*).root$/\1
regex = nl+/^([gq][gq]|).*/ \1
regex = y/^.*/d**sigma\/dx_{2} [pb]
regex = x/^.*/x2

margins = 0.09:0.05:0.1:0.09
ytitle-offset = 1.1

yrange = 1e-6:30

colors = 2
colors = 3
colors = 4
colors = 28

colors = 50
colors = 8
colors = 38
colors = 20

