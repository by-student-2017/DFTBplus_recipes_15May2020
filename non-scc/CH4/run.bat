set OMP_NUM_THREADS=4

C:\DFTBplus_15May2020\dftb+.exe

find "Fermi level:" <detailed.out> info.dat
find "Total energy:" <detailed.out>> info.dat
REM C:\jmol-14.30.2\jmol.jar geo_end.xyz

mkdir plot

find /v "KPT" <band.out> tdos.dat
gnuplot tdos.gp
move tdos.plot .\plot\tdos.plot
move tdos.png .\plot\tdos.png

find /v "KPT" <C.1.out> dos.dat
gnuplot pdos.gp
move dos.png .\plot\dos_c.s.png
move dos.plot .\plot\dos_c.s.plot

find /v "KPT" <C.2.out> dos.dat
gnuplot pdos.gp
move dos.png .\plot\dos_c.p.png
move dos.plot .\plot\dos_c.p.plot

find /v "KPT" <H.out> dos.dat
gnuplot pdos.gp
move dos.png .\plot\dos_h.s.png
move dos.plot .\plot\dos_h.s.plot

cd plot
gnuplot ..\all_dos.gp
copy all_dos.png ..\all_dos.png
cd ..

del tdos.dat
del dos.dat
del info_gnu.dat