/*
3 bit mux of 4 bit inputs
*/


module muxBus4( in , sel , out);
    input [0:28] in;
    input [0:3] sel;
    output [0:3]out;
    assign out = in[sel*4+:3];
endmodule


