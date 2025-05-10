#!/bin/bash
# Prepares files for manufacturing

project_root="$PWD"

zip_gerbers() {
	cd Manufacture/
	rm gerbers.zip
	zip -r gerbers.zip Gerber
    	cd $project_root
}

zip_gerbers

# Convert POS for PCBx
cd Manufacture/
sed '1s/.*/Designator,Val,Package,Position-X,Position-Y,Angle,Layer/' Koca58-all-pos.csv > POS/pcbx_pos.csv
sed -i 's/top/Top Copper/g' POS/pcbx_pos.csv
sed -i 's/bottom/Bottom Copper/g' POS/pcbx_pos.csv

# Convert POS for JLCPCB
sed '1s/.*/Designator,Val,Package,Mid X,Mid Y,Rotation,Layer/' Koca58-all-pos.csv > POS/jlc_pos.csv
sed -i 's/top/Top/g' POS/jlc_pos.csv
sed -i 's/bottom/Bottom/g' POS/jlc_pos.csv
cd ..

