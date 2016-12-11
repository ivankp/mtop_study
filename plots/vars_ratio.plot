input = data/ratio.root

# logy = true

regex = sn/(HT|(H|jet[12])_(pT|eta|y)|jjfb_(dpT|dy|dphi))
regex = ng
regex = nt
regex = y/^.*/infinite \/ finite

regex = tx/HT/H_{T} [GeV]
regex = x/(.*)_pT/\1 p_{T} [GeV]
regex = x/(.*)_y/\1 y
regex = x/(.*)_eta/\1 **eta
regex = x/^H( )/Higgs\1
regex = x/(.*)_dpT/\1 **Deltap_{T} [GeV]
regex = x/(.*)_dy/\1 **Deltay
regex = x/(.*)_dphi/\1 **Delta**phi
regex = x/^jjfb/Forward-backward jets


margins = 0.09:0.05:0.1:0.09
ytitle-offset = 1.1
xtitle-offset = 1.25
