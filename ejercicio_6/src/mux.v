/*
3 bit mux of 4 bit inputs
in: input matrix in array form
input (i , j) = in[i*4 + j] (i -> input, j -> bit)
*/


module muxBus4( in , sel , out);
    input [0:31] in;
    input [0:2] sel;
    output [0:3]out;
    assign out = in[28-sel*4+:4];
endmodule


