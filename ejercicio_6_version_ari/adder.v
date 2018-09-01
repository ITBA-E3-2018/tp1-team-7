
module adder(in1 , in2 , out , cout);
    input in1,in2;
    output out, cout;

    assign out = in1 ^ in2;
    assign cout = in1 & in2;

endmodule
