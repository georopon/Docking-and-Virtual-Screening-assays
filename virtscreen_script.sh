#!/bin/bash

#######################################################################################
#      –––––– This is a script for run automatically to virtual screening ––––––	  #
# AUTOR: ROPÓN-PALACIOS G., BSc, MSc(c),								              #
# 		 Bioinformatics & Thereotical Biophysics – Molecular Genetics Lab,            #
#		 Departament of Biology & Physics, Faculty of Sciences,                       #
#		 Universidad Nacional de San Antonio Abad del Cusco							  # 
#        Av. La Cultura 733, Wanchaq, Cusco, Peru.									  #               
#		 E-mail: biodano.geo@gmail.com												  #
#######################################################################################

# Run Script using vina software:
for f in ligando_*.pdbqt; do
    b=`basename $f .pdbqt`
    echo Processing ligando $b
    mkdir -p $b
    ./vina --config config.text --ligand $f --out ${b}/out.pdbqt --log ${b}/log.text
done

# ./vina is a command for run software 
# --config is a command for run "config.text", which have all paremeters for run vina
# --ligand is a command for enter ligand in pdbqt format
# --out is a command that for output results in pdbqt format
# --log is a command for do a file "log.text" which have all scoring in kcal/mol

# REMENBER: 
## If you are using this script please, cited link of github
# For more information o problems please send me a e-mail.
