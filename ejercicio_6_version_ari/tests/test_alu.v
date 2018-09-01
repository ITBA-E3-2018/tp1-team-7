

module test_alu();
    input [3:0]in1,[3:0]in2;
    input [2:0]opcode;
    output [3:0]out, [3:0]flags;

    alu my_alu()
begin