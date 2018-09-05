module newmux_tb;

    parameter k = 3; //number of inputs

    reg [k-1:0] in1; //select lines
    reg [(2**k)-1:0] in2; //mux input for test
    wire out1; //decoder output


    newmux #(.m(k)) nm(
        .select(in1),
        .in(in2),
        .out(out1)
    );



    integer i, j; 
    initial begin 

        for (j = 0; j < 2**k; j = j + 1)begin //j possible values

            for (i = 0; i < 2**(2**k); i = i + 1)begin //i possible values 
                
                in1 = j; in2 = i;

                $display (" SELECT = %b  INPUT = %b", in1, in2); //displays input values

                #1;
            end
        end 

        $finish;

    end

    initial begin

        $monitor (" OUTPUT %b", out1);//displays output 
      
    end

endmodule 