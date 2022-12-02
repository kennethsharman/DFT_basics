#!/bin/bash
# 00:00:29

#SBATCH --time=0-00:30
#SBATCH --nodes=2
#SBATCH --ntasks-per-node=32
#SBATCH --mem=15G
#SBATCH --mail-user=kenneth.sharman@ucalgary.ca
#SBATCH --mail-type=ALL

module load StdEnv/2020
module load intel/2020.1.217
module load openmpi/4.0.3
module load quantumespresso/6.8

srun ph.x <hBN.ph.init.in> hBN.ph.init.out

