module main ; 
// the problem now is when a binary number is entered that has more than 4 bits or if its value is negative (for example, -1111)
reg aux;
reg [3:0] in1;
reg [3:0] in2;
reg [7:0] ans;

wire input_err1;
wire input_err2;

    check_err err_mod(in1,in2,input_err1,input_err2);
    initial begin // begin = {  end = } 
        aux=$value$plusargs("in1=%b", in1);
        aux=$value$plusargs("in2=%b", in2);
        #1; // this was added in order to work with values processed by err_mod
        
        begin 
            if( input_err1==0 && input_err2==0 )begin
                ans=in1+in2+6;
                $display("First number: %b",in1);
                $display("First number: %b",in2);
                $display("ans : %b", ans);
            end
            else begin
                if(input_err1==1)begin
                    $display("There is an error in in1 argument :(.");
                end
                if(input_err2==1)begin
                    $display("There is an error in in2 argument :(.");
                end
            end
        end 
    
         
        
        $finish; //kind of a return 0;
    end
endmodule // End of Module main
