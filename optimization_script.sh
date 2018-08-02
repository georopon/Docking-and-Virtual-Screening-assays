#!/bin/bash

#######################################################################################
#     –––––– This is a script for optimize geometry of library ligands ––––––		  #
# AUTOR: ROPÓN-PALACIOS G., BSc, MPhil,								                  #
# 		 Bioinformatics, Biophysics & Systems Biology, Molecular Genetics Lab,        #
#		 Departament of Biology & Physics, Faculty of Sciences,                       #
#		 Universidad Nacional de San Antonio Abad del Cusco							  # 
#        Av. La Cultura 733, Wanchaq, Cusco, Peru.									  #               
#		 E-mail: biodano.geo@gmail.com												  #
#######################################################################################

# Run script using obminimize module of Openbabel:
for i in out_*.pdb; do 
	b=`basename $i .pdb`
	echo Processing ligando $b
	mkdir -p $b
	obminimize -ff MMFF94 -n 10000 -sd -c 1e-9 $i; 
done 

# -ff is a force field option
# -n numbres de steps 
# -sd algortirm of steps descendent
# -c energy max 

# REMEMBER:
# If you are usign this script please, cited link of github
# For more information o problems please send me a e-mail.

