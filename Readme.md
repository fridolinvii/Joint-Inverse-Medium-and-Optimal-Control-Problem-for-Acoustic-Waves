# Joint Inverse Medium and Optimal Control Problem for Acoustic Waves
This is the code to the paper (https://doi.org/10.1145/3324989.3325718)[Joint inverse medium and optimal control problem for acoustic waves] (PASC 19).



`auswerten50.m` Matlab code used to generate the images for the paper (Fig. 5, Fig. 6)
`auswerten.edp` Freefem code for (Fig. 5, Fig. 6)
`convergenceTest.edp` Freefem code: does the convergence test
`forward.edp` Freefem code: creates the ground truth and save txt files in waveTrue
`inverse.edp` Freefem code: solves the inverse problem and saves the results in approx_K


Parameters used in the paper:
GaussNewton	10
CGMethod	3

(https://freefem.org/)[Freefem]