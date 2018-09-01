iverilog adder.v full_adder.v adder_4bit.v mux.v alu.v tests/test_adder.v
./a.out
iverilog adder.v full_adder.v adder_4bit.v mux.v alu.v tests/test_full_adder.v
./a.out
iverilog adder.v full_adder.v adder_4bit.v mux.v alu.v tests/test_adder_4bit.v
./a.out
iverilog adder.v full_adder.v adder_4bit.v mux.v alu.v tests/test_mux.v
./a.out
iverilog alu.v adder.v full_adder.v adder_4bit.v mux.v tests/test_alu.v
./a.out