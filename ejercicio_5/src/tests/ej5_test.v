
module ej5_test();
   	reg [3:0]a;
	reg [3:0]b;
	wire [7:0]x;
	
	wire [3:0]cout;

	BCDsum_4bits dum(a,b,1'b0,cout,x);
	
	integer i,j;

	initial begin	
		$display("hello world");
		for (i = 0;i < 10;i++) begin
			for (j = 0;j < 10;j++) begin
				a = i;
				b = j;

				#1 $display("(a,b)=(%d,%d) => %b", a,b,x);
			end
		end
        	
    	end
endmodule
