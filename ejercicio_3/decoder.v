module decoder (x1, x2, a, b, c, d);

    input x1, x2;
    output reg a, b, c, d;

    always @(x1 or x2) begin
      if (x1==0) begin

        if (x2==0) begin // input 00 sets first output to logic 1
          a = 'b1; b = 'b0; c = 'b0; d = 'b0;
        end

        else if (x2==1) begin //input 01 sets second output to logic 1
           b = 'b1; a = 'b0; c = 'b0; d = 'b0;
        end

        else begin //error
           a = 'b1; b = 'b1; c = 'b1; d = 'b1; // in case of error every output sets to logic 1
        end


      end

      else if (x1==1)begin
        
        if (x2==0) begin //input 10 sets third output to logic 1
          c = 'b1; b = 'b0; a = 'b0; d = 'b0;
        end

        else if (x2==1) begin //input 11 sets fourth output to logic 1
           d = 'b1; a = 'b0; c = 'b0; b = 'b0;
        end

        else begin //error
           a = 'b1; b = 'b1; c = 'b1; d = 'b1; // in case of error every output turns into 1
        end

      end

      else begin //error 

        a = 'b1; b = 'b1; c = 'b1; d = 'b1; // in case of error every output turns into 1
        
      end

    end

endmodule

