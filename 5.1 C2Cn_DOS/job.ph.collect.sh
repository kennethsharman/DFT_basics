#!/bin/bash
# 00:01:06

#SBATCH --time=0-00:30
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --mem=15G

#SBATCH --mail-user=kenneth.sharman@ucalgary.ca
#SBATCH --mail-type=ALL

for q in `seq 1 4 ` ; do

for irr in `seq 1 150` ; do

cp -f TMP_DIR/$q/_ph0/hBN.phsave/dynmat.$q.$irr.xml TMP_DIR/_ph0/hBN.phsave 2> /dev/null

done

cp -f TMP_DIR/$q/_ph0/hBN.phsave/dynmat.$q.0.xml TMP_DIR/_ph0/hBN.phsave 2> /dev/null

done

#cp -f TMP_DIR/1/_ph0/hBN.phsave/tensors.xml TMP_DIR/_ph0/hBN.phsave


