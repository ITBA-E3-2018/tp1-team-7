 module check_err(in,out);
    input [3:0] in;
    output reg out;
    reg [3:0] somex;

    initial begin // sin initial tira error ....
        if(in === somex)begin
            assign out=1;
        end 
        else
        if(in>9 || in<0)begin
            assign out=1;
        end
        else begin
            assign out=0;
        end
    end 
 endmodule
