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

module main;

    wire init_cin = 0;
    wire [3:0] cout;
    wire [3:0] z;
    reg err;

    reg [3:0] a;
    reg [3:0] b;
    full_adder FirstFullAdder(a[0],b[0],z[0],init_cin,cout[0]);
    full_adder SecondFullAdder(a[1],b[1],z[1],cout[0],cout[1]);
    full_adder ThirdFullAdder(a[2],b[2],z[2],cout[1],cout[2]);
    full_adder FourthFullAdder(a[3],b[3],z[3],cout[2],cout[3]);

    //half_adder hf1(aux_i[0],aux_i[1],z,cout);
    integer it;
    initial begin
        //for (it=0;it<=4;it = it + 1) begin
        //aux_i=it;
        //#1 $display("a=%b b=%b z=%b cout=%b",aux_i[0],aux_i[1],z,cout);
        //end

        a='b0001;
        b='b0111;

        if( a > 9 || b > 9 || a<0 || b<0) begin
            err=1;
        end
        else begin
            #1 $display("z= %b%b%b%b cout=%b",z[3],z[2],z[1],z[0],cout[2]);
        end
    end
endmodule