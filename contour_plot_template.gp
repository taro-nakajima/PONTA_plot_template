#set term postscript eps enhanced color "Helvetica" 18
#set out 'IntMap.ps'

#for png
set term png size 850, 600
set out 'H00_constEcuts_map2.png'

set pm3d
unset surface
set view map

set yrange[0:1]
set xrange[0.5:1]
set cbran[-2:10]

set palette defined (-8 "black", -4 "blue", -1 "red", 1 "orange", 5 "yellow", 10 "white")

#set encoding iso_8859_1
#set xlabel 'Q ({/Helvetica \305}^-^1)' font "Helvetica,22"    # (A^-1)
#set ylabel 'Normalized intensity (arb units)' font "Helvetica,22"

set xlabel '(H,0,0) (r. l. u.)'
set ylabel 'Energy (meV)'
set cblabel 'log(Int)'

splot "constEcuts2.txt" u 1:2:(log($3))