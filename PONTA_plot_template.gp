datafile1='PONTA_exp0003_scan0036.dat'

#ofst=0.02

#set title "A2=-41.1" font "Arial,18"

#for png
set term png
set out 'PONTA_exp0003_scan0036.png'

#for postscript
#set term postscript eps enhanced color "Helvetica" 18
#set out 'PONTA_exp0003_scan0015.ps'

# for png
set style line 1 lt 1 lc "#ff0000" lw 1 pt 7 ps 1.5
set style line 2 lt 1 lc "#0000FF" lw 1 pt 7 ps 1.5
set style line 11 lt 1 lc "#000000" lw 1 pt 6 ps 1.5

# for postscript
#set style line 1 lt 1 lc "#ff0000" lw 2 pt 7 ps 1.5
#set style line 11 lt 1 lc "#000000" lw 2 pt 65 ps 1.5

set size ratio 0.7  # ratio r = height/width

set xlabel 'C1 (deg)' font "Arial,18" # for png
#set xlabel '1R (mm)' font "Helvetica,22"  # for postscript
#set encoding iso_8859_1
#set xlabel 'Q ({/Helvetica \305}^-^1)' font "Helvetica,22"    # (A^-1)
set ylabel 'Intensity (counts/sec)' font "Arial,18" 

#set xrange[0.1:0.5]
#set yrange[0:0.19]

#set xtics 0.05
set mxtics 4

#set ytics 0.02
#set mytics 5

plot datafile1 u 2:5:(sqrt($5)) w yer ls 1 t 'PG'

