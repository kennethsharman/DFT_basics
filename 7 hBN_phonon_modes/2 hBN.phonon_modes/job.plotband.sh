#!/bin/bash
# < 1 minute  

#SBATCH --time=0-00:05
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --mem=1G

#SBATCH --mail-user=kenneth.sharman@ucalgary.ca
#SBATCH --mail-type=ALL

module load StdEnv/2020
module load intel/2020.1.217
module load openmpi/4.0.3
module load quantumespresso/6.8

srun plotband.x <hBN.plotband.in> hBN.plotband.out
