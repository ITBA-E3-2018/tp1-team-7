module main ; // wtf with this ;
reg aux;
reg a;
initial begin // begin = {  end = } 


    $display ("Installation successful!");

    aux=$value$plusargs("a=%b", a); // in spite of not having "a" value it still executes without any problem

    $display("a's value is:");
    $display(a);
    $finish; //kind of a return 0;
    // if a valid input is fetched, the value of a is de least significant bit
    
end

endmodule // End of Module hello_world