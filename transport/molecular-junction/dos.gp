# plot
set terminal png
set output "transmission.png"
set xlabel "Energy (eV)"
set ylabel "Transmission"
set logscale y
#set xrange[-15:5]
plot "transmission.dat" u 1:2 w l t ""

# plot
set terminal png
set output "local_dos.png"
set xlabel "Energy (eV)"
set ylabel "DOS (arbitrary units"
set logscale y
#set xrange[-15:5]
plot "localDOS.dat" u 1:2 w l t ""