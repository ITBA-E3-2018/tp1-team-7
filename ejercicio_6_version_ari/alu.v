/*
opcodes:
000: addition
001: difference
010: and
011: or
100: not
101: xor
110: a2 complement
111: shift left
*/
/*
flags:
00 carry
01 overflow
10 zero
11 negative
*/

module alu( in1 , in2 , opcode , out , flags );
    input [0:3]in1,in2;
    input [0:2]opcode;
    output out;
    output [0:3]flags;
    
    wire [0:28] pre_op; /* Before selecting the operation */
    wire carry1 , carry2;

    adder4bit my_adder1(in1 , in2 , 0  ,pre_op[0:3] , carry1);
    adder4bit my_adder2(in1 , ~in2 , 1 ,pre_op[4+:3] , carry2);
    assign pre_op[8+:3] = in1 & in2;
    assign pre_op[12+:3] = in1 | in2;
    assign pre_op[16+:3] = in1 ^ in2;
    adder4bit my_adder2(in1 , ~in2 , 1 ,pre_op[20+:3] , carry2);

    
endmodule
