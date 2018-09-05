module gate_level_module (x1,x2,s,f);
    input x1, x2, s;
    output f;

    not (k,s);
    and (g,k,x1);
    or (f,g,h);
endmodule

module simplified_logic_module(x1 , x2 , s, f);
    input x1,x2,s;
    output f;

    assign f = (~f & x1) | (s & x2);

endmodule

// capitulo 4 del libro

