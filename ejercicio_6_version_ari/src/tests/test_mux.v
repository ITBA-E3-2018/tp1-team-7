

module test_mux();
    reg [31:0] in;
    reg [2:0] sel;
    output [3:0] out;
    integer it;

    muxBus4 my_mux(in , sel , out);

    initial begin
        #1 $display("Running testing of mux");
        in[0+:4] = 12;
        in[4+:4] = 15;
        in[8+:4] = 1;
        in[12+:4] = 3;
        in[16+:4] = 5;
        in[20+:4] = 2;
        in[24+:4] = 11;
        in[28+:4] = 14;
        $display("inputs:");
        for (it = 0;it <= 7;it++) begin
            $display("input[%d] = %d ",it,in[it*4+:4]);
        end
        $display("We change 'select' input and check output several times");
        /* test different sel */
        sel = 3;
        #1 $display("sel = %d => output = ",sel,out);
        sel = 5;
        #1 $display("sel = %d => output = ",sel,out);
        sel = 7;
        #1 $display("sel = %d => output = ",sel,out);
        sel = 0;
        #1 $display("sel = %d => output = ",sel,out);
        sel = 2;
        #1 $display("sel = %d => output = ",sel,out);
        $display("-------------------------");
    end

endmodule