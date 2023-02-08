#!/bin/bash
#SBATCH --account=rrg-blaisbru
#SBATCH --ntasks-per-node=40
#SBATCH --cpus-per-task=1
#SBATCH --nodes=1 #number of whole nodes used (each with up to 40 tasks-per-node)
#SBATCH --time=23:59:00 #maximum time for the simulation (hh:mm:ss)
#SBATCH --mem=128G
#SBATCH --job-name=hopper_32
#SBATCH --output=hopper_32.out

export OMP_NUM_THREADS=1
source $HOME/.dealii
time mpirun -np 32 $HOME/lethe/inst/bin/dem_3d hopper_32.prm