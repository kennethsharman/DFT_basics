#!/bin/bash
# 00:01:18

#SBATCH --time=0-00:10
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --mem=5G

#SBATCH --mail-user=kenneth.sharman@ucalgary.ca
#SBATCH --mail-type=ALL

cp TMP_DIR/1/_ph0/hBN.dvscf1 save/hBN.dvscf_q1
cp TMP_DIR/1/_ph0/hBN.dvscf_paw1 save/hBN.dvscf_paw_q1
cp TMP_DIR/2/_ph0/hBN.q_2/hBN.dvscf1 save/hBN.dvscf_q2
cp TMP_DIR/2/_ph0/hBN.q_2/hBN.dvscf_paw1 save/hBN.dvscf_paw_q2
cp TMP_DIR/3/_ph0/hBN.q_3/hBN.dvscf1 save/hBN.dvscf_q3
cp TMP_DIR/3/_ph0/hBN.q_3/hBN.dvscf_paw1 save/hBN.dvscf_paw_q3
cp TMP_DIR/4/_ph0/hBN.q_4/hBN.dvscf1 save/hBN.dvscf_q4
cp TMP_DIR/4/_ph0/hBN.q_4/hBN.dvscf_paw1 save/hBN.dvscf_paw_q4

#cp TMP_DIR/5/_ph0/hBN.q_5/hBN.dvscf1 save/hBN.dvscf_q5
#cp TMP_DIR/5/_ph0/hBN.q_5/hBN.dvscf_paw1 save/hBN.dvscf_paw_q5
#cp TMP_DIR/6/_ph0/hBN.q_6/hBN.dvscf1 save/hBN.dvscf_q6
#cp TMP_DIR/6/_ph0/hBN.q_6/hBN.dvscf_paw1 save/hBN.dvscf_paw_q6
#cp TMP_DIR/7/_ph0/hBN.q_7/hBN.dvscf1 save/hBN.dvscf_q7
#cp TMP_DIR/7/_ph0/hBN.q_7/hBN.dvscf_paw1 save/hBN.dvscf_paw_q7
#cp TMP_DIR/8/_ph0/hBN.q_8/hBN.dvscf1 save/hBN.dvscf_q8
#cp TMP_DIR/8/_ph0/hBN.q_8/hBN.dvscf_paw1 save/hBN.dvscf_paw_q8


