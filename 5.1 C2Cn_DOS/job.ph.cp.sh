#!/bin/bash
# 00:00:22

#SBATCH --time=0-00:30
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --mem=5G

#SBATCH --mail-user=kenneth.sharman@ucalgary.ca
#SBATCH --mail-type=ALL

for q in `seq 1 4 ` ; do

cp -r TMP_DIR/hBN.* TMP_DIR/$q
cp -r TMP_DIR/_ph0/hBN.phsave/* TMP_DIR/$q/_ph0/hBN.phsave

done
