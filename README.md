# WaterFlux_R

trj_generate.sh ↦ Bash file to execute to automate water flux calculation over the simulation trajectories 
a1.c ↦ C script to delete incomplete water molecules (1 water molecule needs to be 3 consecutive atoms) selected with g_select used by trj_generate.sh
selection.dat ↦ To specify the area of the simulation box where we want to find out the change of water molecule number used by trj_generate.sh

conf.gro ↦ Initial Membrane Structure used by trj_generate.sh
trajall.xtc ↦ Simulation trajectory from MD simulation used by trj_generate.sh
All the .itp ↦ All the forcefield files to compile MD simulation used by trj_generate.sh
topol.tpr/topol.top ↦ topology informations to compile MD simulation used by trj_generate.sh
index.ndx ↦ index file to comple MD simulation used by trj_generate.sh


atomnumber ↦ Output including the frame number of the trajectory and the number of water atoms in our specified regions
Flux_Workbook.xlsx ↦ Calculation of flux from the atomnumber 


