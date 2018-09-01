

module adder4bit(in1,in2 ,cin, out , carry);
    output carry;
    input [3:0]in1 ,in2;
    input cin;
    output [3:0]out;
    wire [3:0]aux;

    full_adder add1(in1[0] , in2[0] , cin    , out[0] , aux[0]);
    full_adder add2(in1[1] , in2[1] , aux[0] , out[1] , aux[1]);
    full_adder add3(in1[2] , in2[2] , aux[1] , out[2] , aux[2]);
    full_adder add4(in1[3] , in2[3] , aux[2] , out[3] , carry );
    
endmodule

