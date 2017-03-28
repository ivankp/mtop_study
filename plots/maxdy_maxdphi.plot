input = data/inf.root
input = data/finite.root

# logz = true

regex = sn/^maxdy_maxdphi_HT\[.*//scale=1,width/draw=colz2
regex = ng
regex = f+g/.*\/(.*)\.root/\1_
regex = gt

regex = x/^.*/max **Deltay
regex = y/^.*/max **Delta**phi

regex = xz/^.*/d**sigma\/d(&)
regex = yz+/^.*/d(&) [pb]

regex = zz//d**sigma\/d(max**Deltay) d(max**Delta**phi) [pb]

margins = 0.09:0.14:0.1:0.09
ytitle-offset = 1.1
ztitle-offset = 1.25

interlace = 2
