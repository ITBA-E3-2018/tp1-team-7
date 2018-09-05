

module test_adder_4bit();
    reg [3:0]in1, in2;
    wire [3:0]out;
    wire carry, overflow;

    adder4bit my_adder( in1 , in2 ,1'b1, out , carry,overflow); 


    initial begin
      
      #1 $display("Running some tests of adder 4bit");
      in1 = 12;
      in2 = 15;
      #1 $display("in1 = %d ,in2 = %d => out = %d , {c,o}={%d,%d}",in1,in2,out,carry,overflow);
      in1 = 12;
      in2 = 2;
      #1 $display("in1 = %d ,in2 = %d => out = %d , {c,o}={%d,%d}",in1,in2,out,carry,overflow);
      in1 = 8;
      in2 = 3;
      #1 $display("in1 = %d ,in2 = %d => out = %d , {c,o}={%d,%d}",in1,in2,out,carry,overflow);
      in1 = 15;
      in2 = 1;
      #1 $display("in1 = %d ,in2 = %d => out = %d , {c,o}={%d,%d}",in1,in2,out,carry,overflow);
      in1 = 6;
      in2 = 7;
      #1 $display("in1 = %d ,in2 = %d => out = %d , {c,o}={%d,%d}",in1,in2,out,carry,overflow);  
      in1 = 14;
      in2 = 4;
      #1 $display("in1 = %d ,in2 = %d => out = %d , {c,o}={%d,%d}",in1,in2,out,carry,overflow);  
      in1 = 2;
      in2 = 14;
      #1 $display("in1 = %d ,in2 = %d => out = %d , {c,o}={%d,%d}",in1,in2,out,carry,overflow);  
      
      
      $display("-------------------------");

    end
endmodule