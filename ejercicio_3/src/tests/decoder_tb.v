module decoder_tb;

    reg in1, in2; //decoder inputs for test
    wire out1, out2, out3, out4; //decoder output

    decoder dec (
        .x1(in1), //input 1
        .x2(in2), //input 2
        .a(out1), //output 1
        .b(out2), //output 2
        .c(out3), //output 3
        .d(out4)  //output 4
        );

    integer i, j; 
    initial begin // this generate all possible inputs for a 2-bit input decoder, if another number or a character is introduced, the input value will be the less significant bit of its binary conversion)

        for (j = 0; j < 2; j = j + 1)begin //j has two possible values: 0 or 1

            for (i = 0; i < 2; i = i + 1)begin //i has two possible values: 0 or 1
                
                in1 = j; in2 = i;

                $display (" INPUTS x1 = %b  x2 = %b", in1, in2); //displays input values

                #1;
            end
        end 

        $finish;

    end

    initial begin

        $monitor (" OUTPUTS a = %b  b = %b  c = %b  d = %b", out1, out2, out3, out4);//displays output 
      
    end

    endmodule 