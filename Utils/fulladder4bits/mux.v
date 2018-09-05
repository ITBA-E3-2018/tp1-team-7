module two_entry_mux(x1,x2,s,f);
    input x1,x2,s;
    output f;
    not(k,s);
    and(g,k,x1);
    and(h,s,x2);
    or(f,g,h);

endmodule

module main;

    reg a,b;
    wire res,carry;
    adder add_module(a,b,res,carry);

    reg dummy;

    initial begin
        dummy = $value$plusargs("a=%d", a);
        dummy = $value$plusargs("b=%d", b);
        #1 $display("los numeros ingresados son a=%d y b=%d ",a,b);
        $display(" res= %d carry =%d ",res,carry);
    end

endmodule