
//mux of 2^m bit inputs

//m is the parameter which sets the number of select input lines that the mux has
//in: array of 2^m bits 
//select: array of m bits
//out: one bit 

module mux #(parameter m = 2)(
    input [m-1:0] select,
    input [(2**m)-1:0] in,
    output out
);

    assign out = in[select];

endmodule