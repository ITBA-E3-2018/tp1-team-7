

module test_alu();
    reg [3:0]in1, in2;
    reg [2:0]op;
    wire [3:0]out, flags;

    alu my_alu(in1 , in2 , op , out , flags);

    initial begin
        $display("Running tests of alu");
        
        $display("Sum:");
        in1 = 14; in2 = 4; op = 0; 
        #1 $display("in = {%d,%d} , op = %d => out = %d, {c,o,z,n}={%d,%d,%d,%d}",
            in1, in2, op, out,
            flags[0],flags[1],flags[2],flags[3]);

        in1 = 2; in2 = 2; op = 0;
        #1 $display("in = {%d,%d} , op = %d => out = %d, {c,o,z,n}={%d,%d,%d,%d}",
            in1, in2, op, out,
            flags[0],flags[1],flags[2],flags[3]);

        in1 = 2; in2 = 5; op = 0;
        #1 $display("in = {%d,%d} , op = %d => out = %d, {c,o,z,n}={%d,%d,%d,%d}",
            in1, in2, op, out,
            flags[0],flags[1],flags[2],flags[3]);

        in1 = 2; in2 = 6; op = 0;
        #1 $display("in = {%d,%d} , op = %d => out = %d, {c,o,z,n}={%d,%d,%d,%d}",
            in1, in2, op, out,
            flags[0],flags[1],flags[2],flags[3]);



        $display("Sub:");
        in1 = 2; in2 = 2; op = 1;
        #1 $display("in = {%d,%d} , op = %d => out = %d, {c,o,z,n}={%d,%d,%d,%d}",
            in1, in2, op, out,
            flags[0],flags[1],flags[2],flags[3]);
        in1 = 2; in2 = 3; op = 1;
        #1 $display("in = {%d,%d} , op = %d => out = %d, {c,o,z,n}={%d,%d,%d,%d}",
            in1, in2, op, out,
            flags[0],flags[1],flags[2],flags[3]);
        in1 = 0; in2 = 15; op = 1;
        #1 $display("in = {%d,%d} , op = %d => out = %d, {c,o,z,n}={%d,%d,%d,%d}",
            in1, in2, op, out,
            flags[0],flags[1],flags[2],flags[3]);
        in1 = -1; in2 = -1; op = 1;
        #1 $display("in = {%d,%d} , op = %d => out = %d, {c,o,z,n}={%d,%d,%d,%d}",
            in1, in2, op, out,
            flags[0],flags[1],flags[2],flags[3]);


        $display("bitwise and:");
        in1 = 9; in2 = 4; op = 2;
        #1 $display("in = {%d,%d} , op = %d => out = %d, {c,o,z,n}={%d,%d,%d,%d}",
            in1, in2, op, out,
            flags[0],flags[1],flags[2],flags[3]);
        in1 = 9; in2 = 14; op = 2;
        #1 $display("in = {%d,%d} , op = %d => out = %d, {c,o,z,n}={%d,%d,%d,%d}",
            in1, in2, op, out,
            flags[0],flags[1],flags[2],flags[3]);

        $display("bitwise or:");
        in1 = 9; in2 = 4; op = 3;
        #1 $display("in = {%d,%d} , op = %d => out = %d, {c,o,z,n}={%d,%d,%d,%d}",
            in1, in2, op, out,
            flags[0],flags[1],flags[2],flags[3]);
        in1 = 9; in2 = 14; op = 3;
        #1 $display("in = {%d,%d} , op = %d => out = %d, {c,o,z,n}={%d,%d,%d,%d}",
            in1, in2, op, out,
            flags[0],flags[1],flags[2],flags[3]);

        $display("bitwise xor:");
        in1 = 9; in2 = 4; op = 4;
        #1 $display("in = {%d,%d} , op = %d => out = %d, {c,o,z,n}={%d,%d,%d,%d}",
            in1, in2, op, out,
            flags[0],flags[1],flags[2],flags[3]);
        in1 = 9; in2 = 14; op = 4;
        #1 $display("in = {%d,%d} , op = %d => out = %d, {c,o,z,n}={%d,%d,%d,%d}",
            in1, in2, op, out,
            flags[0],flags[1],flags[2],flags[3]);

        $display("not:");
        in1 = 9; in2 = 4; op = 5;
        #1 $display("in = {%d,%d} , op = %d => out = %d, {c,o,z,n}={%d,%d,%d,%d}",
            in1, in2, op, out,
            flags[0],flags[1],flags[2],flags[3]);
        in1 = 9; in2 = 14; op = 5;
        #1 $display("in = {%d,%d} , op = %d => out = %d, {c,o,z,n}={%d,%d,%d,%d}",
            in1, in2, op, out,
            flags[0],flags[1],flags[2],flags[3]);

        $display("2'th complement:");
        in1 = 9; in2 = 4; op = 6;
        #1 $display("in = {%d,%d} , op = %d => out = %d, {c,o,z,n}={%d,%d,%d,%d}",
            in1, in2, op, out,
            flags[0],flags[1],flags[2],flags[3]);
        in1 = 9; in2 = 14; op = 6;
        #1 $display("in = {%d,%d} , op = %d => out = %d, {c,o,z,n}={%d,%d,%d,%d}",
            in1, in2, op, out,
            flags[0],flags[1],flags[2],flags[3]);
        
        $display("left shift");
        in1 = 0; in2 = 4; op = 7;
        #1 $display("in = {%d,%d} , op = %d => out = %d, {c,o,z,n}={%d,%d,%d,%d}",
            in1, in2, op, out,
            flags[0],flags[1],flags[2],flags[3]);
        in1 = 0; in2 = 14; op = 7;
        #1 $display("in = {%d,%d} , op = %d => out = %d, {c,o,z,n}={%d,%d,%d,%d}",
            in1, in2, op, out,
            flags[0],flags[1],flags[2],flags[3]);

        $display("-------------------------");
    end
endmodule