

module test_adder_4bit();
    reg [3:0]in1, in2;
    wire [3:0]out;
    wire carry;

    adder4bit my_adder( in1 , in2 , out , carry); 


    initial begin
      in1 = 12;
      in2 = 15;
      #1 $display("in1 = %d in2 = %d out = %d carry = %d",in1,in2,out,carry);
      in1 = 12;
      in2 = 2;
      #1 $display("in1 = %d in2 = %d out = %d carry = %d",in1,in2,out,carry);
      in1 = 8;
      in2 = 3;
      #1 $display("in1 = %d in2 = %d out = %d carry = %d",in1,in2,out,carry);
      in1 = 15;
      in2 = 1;
      #1 $display("in1 = %d in2 = %d out = %d carry = %d",in1,in2,out,carry);
      in1 = 6;
      in2 = 7;
      #1 $display("in1 = %d in2 = %d out = %d carry = %d",in1,in2,out,carry);  
    end
endmodule