module mux (a, b, c, d, s1, s2, x);
    input a, b, c, d; //mux inputs
    input s1, s2; //mux select lines
    output reg x; //mux output

    always @(a or b or c or d or s1 or s2) begin
      if (s1 == 0) begin
        if (s2 == 0) begin
          x = a;
        end

        else begin
          x = b;
        end
      end
      else begin
        if (s2 == 0) begin
          x = c;
        end

        else begin
          x = d;
        end
      end
    end

    endmodule

