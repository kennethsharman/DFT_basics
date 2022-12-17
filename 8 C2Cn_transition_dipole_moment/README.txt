The purpose of this project is to calculate the transition dipole moment
associated with the transition from the first excited state to the ground
state in C2Cn. Have a look at my paper for details, but essentially the
transition corresponds to an electronic transition from the 100th band to
the 99th band.

To calculate the transition dipole moment, we need the real-space wave 
functions.

For both the excited and the ground states:
	1) job.scf
	2) job.wfck2r

Note that the input of hBN.wfk2r indicates which orbital we are calculating.
The ground state is band 99 and the excited state is band 100. The scf
calculations are the same for both (because we are not considering spin
polarized calculations), but I don't believe there is a way to change the
name of the output wave function file, so just perform it separately for
the ground and excited states. 

Once you have pulled the files back to your computer, you need to crop the
wfck2r.oct file. In this example, you need to delete the first 61 lines (the
first line in the cropped file should be the start of the wave functions. In 
this example, after you crop, there should be 120x120x144=2073600 lines, as
indicated by line 61, i.e.,
       120       120       144         1         1
Do this for both the ground and excited states. Then you need to delete all
the following symbols from both cropped files: '(', ')', and ','. I usually
use gvim to do this, but you could also do it in your python script.

Calculate the transition dipole using the python script. I was interested in
if the dipole was in-plane or perpendicular to the plane, so I calculate
the magnitude of the x, y, and z components in the python file.
