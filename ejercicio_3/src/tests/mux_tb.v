
module mux_tb;

    reg in1,in2, in3, in4, in5, in6;
    wire out1, out2, out3, out4, out5;

    mux mux1 (in1, in2,in3,in4,in5,in6, out5);
    integer i,j,k,l,m,n;

    initial begin
        for (n=0; n<2; n=n+1)begin
            for (m=0; m<2; m=m+1)begin
                for (l=0; l<2; l=l+1)begin
                    for (k=0; k<2; k=k+1)begin
                        for (j=0; j<2; j=j+1)begin
                            for (i=0;i<2; i=i+1)begin
                                in1 = i; in2 = j; in3 = k; in4=l; in5=m;in6=n;
                                $display (" mux input values are %b %b %b %b and select lines are %b %b", in1, in2, in3, in4, in5, in6);
                                #1;
                            end
                        end 
                    end
                end
            end
        end   
        $finish;       
    end

    initial begin

        $monitor (" mux output value is %b", out5);
    end

endmodule


      
 
    