
module ej5_test;
    reg [3:0]a;
    reg [3:0]b;
    wire init_cin=0;
    wire [3:0]cout;
    wire [3:0]z;
    reg [7:0]answer;
    reg erra;
    reg errb;
    reg reader;
    BCDsum_4bits sum(a,b,z,init_cin,cout);
    integer i;
        
    initial begin
        
            for(i=0;i<4;i=i+1)begin
                answer[i]=z[i];
            end
            answer[4]=cout[3];
            for(i=5;i<=7;i=i+1)begin 
                answer[i]=0;
            end
            
            $display("%b",answer);
        end
    end
endmodule
