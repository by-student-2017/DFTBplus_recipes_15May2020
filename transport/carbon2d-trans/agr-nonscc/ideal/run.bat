set OMP_NUM_THREADS=4

REM C:\DFTBplus_15May2020\gen2xyz 2cell_7.gen
REM C:\jmol-14.30.2\jmol.jar 2cell_7.xyz

C:\DFTBplus_15May2020\buildwire.exe 2cell_7.gen 3 2

move Ordered_2cell_7.gen device_7.gen

C:\DFTBplus_15May2020\dftb+.exe

gnuplot dos.gp