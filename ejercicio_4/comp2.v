module comp2(d,c,b,a,out_d,out_c,out_b,out_a);

input d,c,b,a;
output out_a,out_b,out_c,out_d;

assign out_a = a;
assign out_b = ((~b) & a) + (b & (~a));
assign out_c = (c & (~b) & (~a)) + ((~c) & a) + ((~c) & b & (~a));
assign out_d = (d & (~c) & (~b) & (~a)) + ((~d) & c) + ((~d) & (~c) & a) + ((~d) & b & (~a));

endmodule 