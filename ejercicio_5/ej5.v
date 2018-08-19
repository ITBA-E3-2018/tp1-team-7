module main ; // wtf with this ;
// the problem now is when a binary number is entered that has more than 4 bits
reg aux;
reg [3:0] in1;
reg [3:0] in2;
reg [7:0] ans;
wire input_err=0;



    initial begin // begin = {  end = } 

        aux=$value$plusargs("in1=%b", in1);
        aux=$value$plusargs("in2=%b", in2);
        $finish; //kind of a return 0;
    end
    check_err mod1(in1,input_err);
    check_err mod2(in2,input_err);

    initial begin

        begin 
            if(input_err == 0)begin
                $display("No input errors! way to go! :).");
            end
            else if(input_err==1)
            begin
                $display("There is an input error. I'm sorry :(.");
            end
            else
                $display("valor de input_err : ",input_err);
        end
        
        ans=in1+in2+6;
        $display("First number: %b",in1);
        $display("First number: %b",in2);
        $display("ans : %b", ans);
    end

endmodule // End of Module hello_world

