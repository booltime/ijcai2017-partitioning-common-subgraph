# vim: set et ft=gnuplot sw=4 :

set terminal tikz standalone color size 6cm,5.5cm font '\scriptsize' preamble '\usepackage{times,microtype,algorithm2e,algpseudocode,amssymb}'
set output "gen-graph-sip-james-versus-kdown-nodes-scatter.tex"

set xlabel '$k{\downarrow}$ Recursive Calls'
set ylabel '\textproc{McSplit${\downarrow}$} Recursive Calls'
set border 3
set grid x y front
set xtics nomirror
set ytics nomirror
set tics front
set size square
set xrange [1:1e10]
set yrange [1:1e10]
set x2range [-0.5:50.5]
set y2range [-0.5:50.5]
set cbrange [1:100]
set cbtics out nomirror offset character -1
set logscale x
set logscale y
set format x '$10^{%T}$'
set format y '$10^{%T}$'
set logscale cb

load "magmafromwhite-adjusted-for-heatmaps.pal"
set palette negative

plot \
    "sip-james-versus-kdown-heatmap.data.adjusted" u 2:1:3 matrix w image axes x2y2 notitle, \
    x w l ls 0 notitle

