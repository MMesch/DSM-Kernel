#!/bin/sh
#SBATCH --job-name DSM-ker
#SBATCH --nodes 4
#SBATCH --ntasks-per-node=16
#SBATCH --partition cpunormal
#SBATCH --exclusive

module purge
module load intel/compiler intel-mpi/64 intel/mkl slurm
mpirun -tmi -np 64 ../../bin/mpiKernelMaker < ./kernel.inf
