#!/bin/bash
# Prepares files for manufacturing
#
# Afterwards the csv and pos files will need to have their delimeter changed for jlc
# Opening and saving in libre office will fix this

project_root="$PWD"

zip_gerbers() {
    cd Manufacture/
    zip -r gerbers.zip Gerber
    cd $project_root
}

zip_gerbers $project_name
python bom_adder.py
sed -i '1s/.*/Designator,Val,Package,Mid X,Mid Y,Rotation,Layer/' Manufacture/Koca-all-pos.csv 
