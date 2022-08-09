# vaspconvergencetests
Some bash scripts to help automate convergence testing in VASP. Very rudimentary.

*clean.sh* - Extracts the final free energy from the OSZICAR output file at the end of a VASP run, exporting the results into a energies.csv file. Also       extracts forces from first atom in cell from OUTCAR output file and exports it into forces.csv.
