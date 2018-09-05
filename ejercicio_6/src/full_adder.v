
module full_adder(in1,in2 , cin, out, cout);
    input in1,in2,cin;
    output out,cout,overflow;
    wire aux , cin1;

    adder my_adder1(in1,in2 , aux , cin1 );
    adder my_adder2(aux,cin, out , cin2);
    
    assign cout = cin1 | cin2;

endmodule
