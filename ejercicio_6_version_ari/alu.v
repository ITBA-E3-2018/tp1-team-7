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
flags:
00 carry
01 overflow
10 zero
11 negative
*/

module alu( in1 , in2 , opcode , out , flags );
    input [3:0]in1,in2;
    input [2:0]opcode;
    output [3:0]out;
    output [3:0]flags;
    
    wire [31:0] pre_op; /* Before selecting the operation */
    wire carry1 , carry2 , carry3 , overflow1,overflow2,overflow3;

    /** We deal with output **/
    adder4bit my_adder1(in1 , in2 , 1'b0  ,pre_op[0+:4] , carry1 , overflow1);
    adder4bit my_adder2(in1 , ~in2 , 1'b1 ,pre_op[4+:4] , carry2 , overflow2);
    assign pre_op[8+:4] = in1 & in2;
    assign pre_op[12+:4] = in1 | in2;
    assign pre_op[20+:4] = in1 ^ in2;
    assign pre_op[16+:4] = ~in2;
    adder4bit my_adder3(4'b0000 , ~in2 , 1'b1 ,pre_op[24+:4] , carry3, overflow3);
    assign pre_op[28+:4] = in2<<1;
    
    muxBus4 my_mux(pre_op, opcode , out);

    /** Now we deal with flags **/
    
    assign flags[0] = (opcode == 0) ? carry1    : ((opcode == 1) ? carry2 : in2[3]);
    assign flags[1] = (opcode == 0) ? overflow1 : ((opcode == 1) ? overflow2 : 0);
    assign flags[2] = (out == 0);
    assign flags[3] = out[3];

endmodule
