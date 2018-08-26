module encoder (in, out);

    input[3:0] in;
    output reg[1:0] out;
        
    always @(in) begin
        if (in == 'b1000)
            out = 'b00;
        else
            if (in == 'b0100)
                out = 'b01;
            else
                if (in == 'b0010)
                    out = 'b10;
                else
                    if (in == 'b0001)
                        out = 'b11;
    end
endmodule


module decoder (in, out);

    input [1:0] in;
    output reg[3:0] out;

    always @(in) begin
      if (in == 'b00)
        out = 'b1000;
    else 
        if (in == 'b01)
            out = 'b0100;
        else
            if (in == 'b10)
                out = 'b0010;
            else
                if (in == 'b11)
                    out = 'b0001;
    end
endmodule