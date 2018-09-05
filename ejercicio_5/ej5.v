module half_adder(A,B,Z,COUT);
    input A,B;
    output Z,COUT;
    xor(Z,A,B);
    and(COUT,A,B);
endmodule

module full_adder(A,B,Z,CIN,COUT);
    input A,B,CIN;
    output COUT,COUT1,COUT2,Z;
    wire AUX_OUT;

    half_adder hf(A,B,AUX_OUT,COUT1);
    half_adder hf_withcarry(AUX_OUT,CIN,Z,COUT2);
    or(COUT,COUT1,COUT2);
endmodule

module full_adder_4bits(a,b,z,cin,cout);
    input [3:0] a;
    input [3:0] b;
    input wire cin;
    output wire [3:0] cout;
    output wire [3:0] z;

    full_adder FirstFullAdder(a[0],b[0],z[0],cin,cout[0]);
    full_adder SecondFullAdder(a[1],b[1],z[1],cout[0],cout[1]);
    full_adder ThirdFullAdder(a[2],b[2],z[2],cout[1],cout[2]);
    full_adder FourthFullAdder(a[3],b[3],z[3],cout[2],cout[3]);
endmodule

module BCDsum_4bits(a,b,z,cin,cout);
    input [3:0] a;
    input [3:0] b;
    output wire [3:0] y;
    output wire [7:0] z;
    output wire [3:0] cout;
    input wire cin;
    
    wire [3:0] aux_cout;
    full_adder_4bits sum(a,b,y,cin,aux_cout);
    wire [3:0]c= y > 9 ? 6 : 0;
    full_adder_4bits another(y,c,z,1'b0,cout);
    assign z[4]=cout[3];
    
    
endmodule

module main;
    reg [3:0]a;
    reg [3:0]b;
    wire init_cin=0;
    wire [3:0]cout;
    wire [7:0]z;
    reg [7:0]answer;
    reg erra;
    reg errb;
    reg reader;
    BCDsum_4bits sum(a,b,z,init_cin,cout);
    integer i;
        
    initial begin
        reader = $value$plusargs("a=%b", a);
        reader = $value$plusargs("b=%b", b);
        
        assign erra = a>9;
        assign errb = b>9;
        #1;
        if(erra)begin 
            $display("a is not a BCD digit");
        end 
        else if(errb) begin
            $display("b is not a BCD digit");
        end 
        else begin
            /* for(i=0;i<4;i=i+1)begin
                answer[i]=z[i];
            end
            answer[4]=cout[3];
            for(i=5;i<=7;i=i+1)begin 
                answer[i]=0;
            end
             */
            $display("%b",answer);
        end 
    end

endmodule
