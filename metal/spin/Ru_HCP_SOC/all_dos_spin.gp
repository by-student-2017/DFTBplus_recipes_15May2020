# plot
set terminal png
set output "all_dos_up.png"
set xlabel "Energy (eV)"
set ylabel "Density of States (arb.units)"
#set xrange[-15:5]
set yrange[0:*]
plot "tdos_spin.plot" u 1:2 w l t "total dos", "dos_ru.s.plot" u 1:2 w l t "Ru s", "dos_ru.p.plot" u 1:2 w l t "Ru p", "dos_ru.d.plot" u 1:2 w l t "Ru d"


# plot
set terminal png
set output "all_dos_down.png"
set xlabel "Energy (eV)"
set ylabel "Density of States (arb.units)"
#set xrange[-15:5]
set yrange[0:*]
plot "tdos_spin.plot" u 1:3 w l t "total dos", "dos_ru.s.plot" u 1:3 w l t "Ru s", "dos_ru.p.plot" u 1:3 w l t "Ru p", "dos_ru.d.plot" u 1:3 w l t "Ru d"
