module main ; // wtf with this ;
reg aux;
reg [3:0] in;
reg [3:0] somex;
reg input_err;
initial begin // begin = {  end = } 


    assign input_err = 0;

    aux=$value$plusargs("in=%b", in);
    begin
        if(in === somex)begin
            assign input_err=1;
        end 
        else
        if(in>9 || in<0)begin
            assign input_err=1;
        end
    end

    
    begin 
        if(input_err == 0)begin
            $display("No input errors! way to go! :).");
        end
        else if(input_err==1)
            $display("There is an input error. I'm sorry :(.");
        begin

        end
    end
    // the problem now is when a binary number is entered that has more than 4 bits
    $display("The number you entered is: ",in);


    $finish; //kind of a return 0;
    
end

endmodule // End of Module hello_world