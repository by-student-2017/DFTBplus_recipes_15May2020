# plot
set terminal png
set output "dos.png"
set xlabel "Energy (eV)"
set ylabel "Density of States (arb.units)"
#set xrange[-15:5]
plot "transmission.dat" u 1:2 w l t ""
