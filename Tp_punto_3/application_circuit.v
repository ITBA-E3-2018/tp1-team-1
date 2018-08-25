module encoder (in, out);

    input[3:0] in;
    output reg[1:0] out;
    reg error = 0;
        
    always @(in) begin
        if (in == 'b0001)
            out = 'b00;
        else
            if (in == 'b0010)
                out = 'b01;
            else
                if (in == 'b0100)
                    out = 'b10;
                else
                    if (in == 'b1000)
                        out = 'b11;
                    else  
                        error = 1;
    end
endmodule