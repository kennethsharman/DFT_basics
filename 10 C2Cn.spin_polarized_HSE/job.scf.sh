#!/bin/bash
# 19:31:45 
# 52.50 GB

#SBATCH --time=1-10:00
#SBATCH --nodes=2
#SBATCH --ntasks-per-node=32
#SBATCH --mem=45G

#SBATCH --mail-user=kenneth.sharman@ucalgary.ca
#SBATCH --mail-type=ALL

module load nixpkgs/16.09
module load intel/2019.3
module load openmpi/4.0.1
module load quantumespresso/6.4.1
srun pw.x <C2Cn.in> C2Cn.out
