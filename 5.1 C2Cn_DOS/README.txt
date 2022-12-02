
Make sure you have the new extra folders in TMP_DIR

Job submission order:
	1) job.scf
	2) job.ph.init
	3) job.ph.cp
	3) simultaneously run job.ph1, job.ph2, job.ph3, and job.ph4
	4) job.ph.collect
	5) job.ph.final
	6) job.q2r
	7) job.matdyn.DOS

Plot hBN.dos. The phonon_DOS.ipynb shows you how/what I did.
