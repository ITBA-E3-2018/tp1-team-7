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
    reg [3:0] c;

    output wire [3:0] z;
    output wire [3:0] cout;
    output wire cin;
    full_adder_4bits sum(a,b,z,cin,cout);
    initial begin
        if(a+b>9)begin
            assign c=a+6;
        end 
    end
endmodule


module main;
    reg [3:0]a;
    reg [3:0]b;
    wire init_cin=0;
    wire [3:0]cout;
    wire [3:0]z;
    reg err;
    reg reader;
    BCDsum_4bits sum(a,b,z,init_cin,cout);

    initial begin
        reader = $value$plusargs("a=%b", a);
        reader = $value$plusargs("b=%b", b);
        
        assign err = a>9 || b>9;
        #1;
        if(err)begin 
            $display("there is an input error");
        end
        else begin
            $display("z= %b%b%b%b%b",cout[3],z[3],z[2],z[1],z[0]);
        end
    end
endmodule