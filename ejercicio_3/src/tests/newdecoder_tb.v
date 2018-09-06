module newdecoder_tb;

    parameter k = 3; //number of inputs

    reg in1; //encoder
    reg [k-1:0] in2; //decoder inputs for test
    wire [(2**k)-1:0] out1; //decoder output


    newdecoder #(.n(k)) newdec (
        .en(in1),
        .in(in2),
        .out(out1)
    );


    integer i, j; 
    initial begin // this generate all possible inputs for a 2-bit input decoder, if another number or a character is introduced, the input value will be the less significant bit of its binary conversion)

        for (j = 0; j < 2; j = j + 1)begin //j has two possible values: 0 or 1

            for (i = 0; i < 2**k; i = i + 1)begin //i possible values 
                
                in1 = j; in2 = i;

                $display (" INPUTS x1 = %b  x2 = %b", in1, in2); //displays input values

                #1;
            end
        end 

        $finish;

    end

    initial begin

        $monitor (" OUTPUTS a = %b", out1);//displays output 
      
    end

endmodule 