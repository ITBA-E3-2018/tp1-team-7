module decoder_tb;
    reg in1,in2;
    wire out1, out2, out3, out4;

    decoder dec (in1,in2,out1,out2,out3,out4);

    integer i,j;
    initial begin
        for (j=0; j<2; j=j+1)begin

            for (i=0;i<2; i=i+1)begin
                
                in1 = j; in2 = i;
                $display (" decoder input values are %b %b ", in1, in2);
                #1;
            end
        end //every input possible for a 2-bit input decoder (if another number or a character is introduced the input value will be the less significant bit of its binary conversion

        $finish;

    end

    initial begin
        $monitor (" decoder output values are %b %b %b %b",out1,out2,out3,out4);
      
    end

    endmodule 