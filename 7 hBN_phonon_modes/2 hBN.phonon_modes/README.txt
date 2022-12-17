
The primary reason we are performing this calculation is to analyze
the matdyn.modes file. When calculating the spectral function using Alkauskas'
method, it appears that we need the phonon eigenvectors. These are listed in the
matdyn.modes output. 

We will also produce a phonon dispersion plot for h-BN. This may come up in 
your studies, so we might as well also do it while we are getting the eigenvectors.

For this calculation, the phonon calculation (job.ph) will be run as a single
job because the system is the h-BN unit cell (2 atoms). We split the C2Cn 
phonon into 4 jobs because it is quite large (50 atoms). Since it is a single
job, we don't need the extra folders in TMP_DIR.

	1) job.scf
	2) job.ph
	3) job.q2r
	4) job.matdyn
	5) job.plotband

You don't need to run the plotband job, but it provides a quick visual that
can be helpful. You might need a program to view the .ps file. I use
ghostscript (https://www.ghostscript.com/). Alternatively, just plot the
hBN.freq file.

You can visualize the matdyn.modes file using this website:

	https://interactivephonon.materialscloud.io/

Compare the output of the maydyn.modes file with the animations.
