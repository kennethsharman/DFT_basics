#!/bin/bash
# 00:07:49
# 8.19 G

#SBATCH --time=0-00:30
#SBATCH --nodes=2
#SBATCH --ntasks-per-node=32
#SBATCH --mem=25G

#SBATCH --mail-user=kenneth.sharman@ucalgary.ca
#SBATCH --mail-type=ALL

module load StdEnv/2020
module load intel/2020.1.217
module load openmpi/4.0.3
module load quantumespresso/6.8

srun pw.x <hBN.scf.in> hBN.scf.out
