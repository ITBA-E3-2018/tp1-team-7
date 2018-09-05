//mux (4:1)
//a, b, c, d are the mux's inputs (their value could be 1 or 0)
//s1, s2 are the mux's select lines (their value could be 1 or 0)
//x is the mux's output (it takes the value of the selected input)

module mux (a, b, c, d, s1, s2, x);
    input a, b, c, d; //mux 1-bit-inputs
    input s1, s2; //mux select input lines
    output reg x; //mux output

    always @(a or b or c or d or s1 or s2) begin
      if (s1 == 0) begin
        if (s2 == 0) begin //select line 00 connects the first input to the output
          x = a;
        end

        else begin //select line 01 connects the second input to the output
          x = b;
        end
      end
      else begin
        if (s2 == 0) begin //select line 10 connects the third input to the output
          x = c;
        end

        else begin //select line 11 connects the fourth input to the output
          x = d;
        end
      end
    end

    endmodule

