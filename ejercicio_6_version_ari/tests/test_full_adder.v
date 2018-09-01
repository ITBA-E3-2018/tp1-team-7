
module test_full_adder();
    reg in1,in2,cin;
    wire out,cout;
    integer it1,it2,it3;

    full_adder my_full_adder(in1,in2,cin,out,cout);

    initial begin
        for (it1 = 0;it1 <= 1;it1++) begin
            for (it2 = 0;it2 <= 1;it2++) begin
                for (it3 = 0;it3 <= 1;it3++) begin
                    in1 = it1;
                    in2 = it2;
                    cin = it3;
                    #1 $display("in1 = %d ,in2 = %d, cin = %d => out = %d, cout = %d",in1,in2,cin,out,cout);
                end
            end
        end
    end

endmodule