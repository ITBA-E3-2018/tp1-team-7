module main ; // wtf with this ;
reg aux;
reg [3:0] in;
//reg a;
reg input_err;
initial begin // begin = {  end = } 


    assign input_err = 0;

    aux=$value$plusargs("in=%b", in); // in spite of not having "a" value it still executes without any problem

    $display("in's value is:");
    $display(in);
    
    $display("input error is:",input_err);

    $finish; //kind of a return 0;
    // if a valid input is fetched, the value of a is de least significant bit

end

endmodule // End of Module hello_world