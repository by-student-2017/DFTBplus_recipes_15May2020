set OMP_NUM_THREADS=1

copy dftb_in.hsd_contacts_source dftb_in.hsd
C:\DFTBplus_15May2020\dftb+.exe

REM find "Total energy:" <detailed.out> total_energy.dat
find "Fermi level:" <detailed.out> EF_source.dat

copy dftb_in.hsd_contacts_drain dftb_in.hsd
C:\DFTBplus_15May2020\dftb+.exe

REM find "Total energy:" <detailed.out> total_energy.dat
find "Fermi level:" <detailed.out> EF_drain.dat

copy dftb_in.hsd_transport dftb_in.hsd
C:\DFTBplus_15May2020\dftb+.exe

gnuplot dos.gp