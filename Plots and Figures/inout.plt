set terminal X11 noenhanced
set title "*cmos inverter involving equating rise and fall time"
set xlabel "s"
set ylabel "V"
set grid
unset logscale x 
set xrange [0.000000e+00:1.000000e-06]
unset logscale y 
set yrange [-1.995026e-01:3.519041e+00]
#set xtics 1
#set x2tics 1
#set ytics 1
#set y2tics 1
set format y "%g"
set format x "%g"
plot 'inout.data' using 1:2 with lines lw 1 title "v(input)",\
'inout.data' using 3:4 with lines lw 1 title "v(output)"
set terminal push
set terminal postscript eps color noenhanced
set out 'inout.eps'
replot
set term pop
replot
