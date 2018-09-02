
module adder_test();
    reg in1,in2;
    integer it1,it2;
    wire out,cout;
    adder my_adder(in1,in2,out,cout);
    
    initial begin
        $display("Running tests of adder");
        for (it1 = 0;it1 <= 1;it1++) begin
            for (it2 = 0;it2 <= 1;it2++) begin
                in1 = it1;
                in2 = it2;
                #1 $display("in1 = %d,in2 = %d => out = %d ,cout = %d ",in1,in2,out,cout);                
            end
        end
        $display("-------------------------");
    end

endmodule