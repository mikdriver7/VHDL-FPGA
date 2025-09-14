# ModelSim simulation script for registers_min_max
add wave *

force clk 0 0, 1 5 -repeat 10
force reset 1
force sel "00"
run 10

force reset 0
force din "0000"
run 20

force din "0001"
run 20

force din "0010"
run 20

force din "0011"
run 20

force din "0100"
run 20

force din "0101"
run 20

force sel "01"
run 10

force sel "10"
run 10

force sel "11"
run 10

force din "0110"
run 20

force din "0111"
run 20

force din "1000"
run 20

force din "1001"
run 20

force sel "00"
run 10

run 100
