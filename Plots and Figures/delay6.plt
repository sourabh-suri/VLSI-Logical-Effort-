set terminal X11 noenhanced
set title "DUT Delay = 167.7488 pico seconds with 6 Fanout"
set xlabel "Time in seconds"
set ylabel "Voltage in Volts"
set grid
unset logscale x 
targ=  2.667420e-10 
trig=  9.899319e-11



set xrange [0.000000e+00:0.5000000e-9]
unset logscale y 
set yrange [-3.436647e-01:3.732676e+00]
set xtics 1
#set x2tics 1
#set ytics 1.65
#set y2tics 1
 
set arrow from targ,0 to targ,1.65 nohead
set arrow from trig,0 to trig,1.65 nohead
set arrow from 0,1.65 to targ,1.65 nohead
set arrow from 0,1.65 to trig,1.65 nohead

set xtics add (targ)
set xtics add (trig)
set ytics (1.65)

set format y "%g"
set format x "%g"
plot 'delay.data' using 1:2 with lines lw 3 title "v(in_{DUT})",\
'delay.data' using 3:4 with lines lw 3 title "v(out_{DUT})"
set terminal push
set term png size 800,600 
set output "delay.png"
replot
set term pop
replot
