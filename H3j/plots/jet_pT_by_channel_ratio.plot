input = data/ratio.root

# logy = true

regex = smng/[gq]{2}((H|jet[1-9])_pT)/\1
regex = gt/^.*/& @ LO
regex = nl/^([gq]{2}).*/\1
regex = y/^.*/infinite \/ finite

regex = gx/(.*)_pT/\1 p_{T} [GeV]

margins = 0.09:0.05:0.1:0.09
ytitle-offset = 1.1
xtitle-offset = 1.25

hline = 1

legend = tl
logy = true
mlogy = true
noexpy = true
