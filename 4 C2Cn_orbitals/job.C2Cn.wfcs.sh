#!/bin/bash
# 00:00:45

#SBATCH --time=0-00:10
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=16
#SBATCH --mem=45G

#SBATCH --mail-user=kenneth.sharman@ucalgary.ca
#SBATCH --mail-type=ALL

module load StdEnv/2020
module load intel/2020.1.217
module load openmpi/4.0.3
module load quantumespresso/6.8

srun pp.x <ppMO99.in> ppMO99.out
srun pp.x <ppMO100.in> ppMO100.out

