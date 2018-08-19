 module check_err(in1,in2,out1,out2);
    input [3:0] in1;
    input [3:0] in2;
    output reg out1;
    output reg out2;
    reg err1= 1;
    reg err2= 1;
    // must fail unless all tests are covered
    initial begin // sin initial tira error ....
        #1;
        if( in1>=0 && in1<=9 )begin
            assign err1=0;
        end
        if( in2>=0 && in2<=9 )begin
            assign err2=0;
        end
        assign out1=err1;
        assign out2=err2;
    end 
 endmodule
