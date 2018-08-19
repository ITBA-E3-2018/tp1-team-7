module main ; // wtf with this ;
reg aux;
reg [3:0] in;
reg [3:0] somex;
reg input_err;
initial begin // begin = {  end = } 


    assign input_err = 0;

    aux=$value$plusargs("in=%b", in);

    $display("in's value is:"); 
    $display(in);
    $display("somex's value is:");
    $display(somex);
    
    begin
        if(in === somex)
            assign input_err=1; 
    end

    
    $display("input error is:",input_err);

    $finish; //kind of a return 0;
    
end

endmodule // End of Module hello_world