module main ;
    parameter sel = 20;
    initial begin
        if (sel == 1)
            begin
            $display("era 1!");
            end
        else
            begin
            $display("no era 1! :c");
            end
        
    end
    //$display(sel);
    //$finish;
endmodule // End of Module hello_world