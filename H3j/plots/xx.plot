input = data/inf.root
input = data/finite.root

# logz = true

regex = sn/^x[H0-9]_x[H0-9]_HT\[[^_]*\)//scale=1,width/draw=colz
regex = ng

regex = gx/^(x[H0-9])_(x[H0-9]).*/\1
regex = gy/^(x[H0-9])_(x[H0-9]).*/\2

regex = f+g/.*\/(.*)\.root/\1_
regex = gt

regex = xz/x(.*)/d**sigma\/dx_{\1}
regex = yz+/x(.*)/dx_{\1} [pb]

margins = 0.09:0.125:0.1:0.09
ytitle-offset = 1.1

interlace = 2
