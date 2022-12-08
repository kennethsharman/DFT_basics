
  1)	job.scf.sh
  2)	job.ph.init.sh
  3)	job.ph.cp.sh
  4)	job.ph1.sh, job.ph2.sh, job.ph3.sh, job.ph4.sh
  5)	ph.collect.sh
  6)	job.ph.final.sh
  
  # Navigate to main folder in compute canada and type in the following commands
  7)	cp -r TMP_DIR/NV.save ./.
  8)	python pp.py (then type) hBN 

  9)	job.dvscf.sh
  10)	jon.nscf.sh
  11)	job.epw.sh

  #Navigate to main folder in compute canada and type:
  grep "2        2      " hBN.epw.out > 22.dat
  # This collects all the intraband matrix elements in a2 band (see my paper).
  # In the epw.in file, we instruct the calculation to skip the first 98 bands
  # The a2 band is the 100th band, so when we skip the first 98 bands, it becomes
  # band #2.

  12) Plot 22.dat using the jupyter notebook file
