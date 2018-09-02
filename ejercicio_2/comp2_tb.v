`include "comp2.v"

module comp2_tb();

reg [3:0] in_test;
integer i;
wire [3:0] out_test;

initial begin
$monitor("IN: %d %d %d %d - OUT: %d %d %d %d",in_test[3],in_test[2],in_test[1],in_test[0],
                                              out_test[3],out_test[2],out_test[1],out_test[0]);
in_test = 'b0000;
for (i = 1;i < 16;i = i+1 ) begin
  #1
  in_test = in_test + 'b0001;
end
$finish;
end

comp2 conection(in_test[3],in_test[2],in_test[1],in_test[0],out_test[3],out_test[2],out_test[1],out_test[0]);

endmodule
