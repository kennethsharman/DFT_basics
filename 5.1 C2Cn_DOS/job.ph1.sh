#!/bin/bash
# ~ 1 day
# ~ 41 GB

#SBATCH --time=1-00:00
#SBATCH --nodes=2
#SBATCH --ntasks-per-node=32
#SBATCH --mem=45G
#SBATCH --mail-user=kenneth.sharman@ucalgary.ca
#SBATCH --mail-type=ALL

module load StdEnv/2020
module load intel/2020.1.217
module load openmpi/4.0.3
module load quantumespresso/6.8

srun ph.x <hBN.ph1.in> hBN.ph1.out

