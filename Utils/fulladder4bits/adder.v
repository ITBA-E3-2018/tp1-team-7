module adder(a,b,res,carry);
    input a,b,z;
    output res,carry;

    xor(res,a,b);
    and(carry,a,b);
endmodule