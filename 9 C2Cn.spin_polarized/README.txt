
These calculations are an example of what I did in Omid's paper:
	https://journals.aps.org/prb/abstract/10.1103/PhysRevB.105.184101

When calculating the spectral function using Alkauskas' method, you will
need the equilibrium atomic positions in both the ground and the excited states.
All of our relaxation calculations that we have previously done correspond to
the ground state of the system. We can simulate excited states by performing
spin polarized calculations. This project is an example of how to find the
relaxed positions of the nuclei in both the ground and excited states.

Note that I perform the spin-polarized calculations not just for the excited
state but also for the ground state. In theory, the ground state spin-polarized
calculation should be the same as the non spin-polarized calculation, however,
the DFT algorithm is slightly different for spin polarized calculations. Since
you will be calculating the difference in the atomic positions betwen the
excited and state grounds, I think it makes sense to perform spin-polarized 
calculations for both the ground and the excited states.

Quantum Espresso is not great at spin polarized calculations. I found that I
had to "slowly" relax the system. You can have a look at the input files,
but essentially I started with small values for the 'etot_conv_thr',
'forc_conv_thr', and the 'conv_thr'. After each calculation I would decrease
these thresholds.

Note that I did not relax the structures to the same force threshold
as we have done for the phonon calculations. Since we are looking at only
the nuclear positions (and not electronic energy or phonon frequencies), my
understanding is that the force tolerance can be higher. Essentially, I was 
using the force tolerance in the following paper as my "guide":

	https://journals.aps.org/prb/abstract/10.1103/PhysRevB.96.081115

Note that the units in the paper are different than the units in the QE input.

Finally, note that I ran these calculations a year and a half ago and was
using an older version of QE and the required packages on compute canada. You
should probably update these if you run my calculations.
