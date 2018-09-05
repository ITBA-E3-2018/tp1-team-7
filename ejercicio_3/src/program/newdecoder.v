
//decoder of n bit inputs

//n is a parameter that sets the number of inputs the decoder has
//input: array of n bits 
//output array of 2^n bits

module decoder #(parameter n = 2)(
    input en,
    input [n-1:0] in,
    output [(2**n)-1:0] out
);

    assign out = 'b1*en << in; //shifts left 1 'in' times.

endmodule


    
    
    