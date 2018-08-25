module encoder (in1, in2, in3, in4, out1, out2);

    input in1, in2, in3, in4;
    output reg out1=0, out2=0;

        
    always @(in1 or in2 or in3 or in4) begin
        if (in1 == 1)
            out1 = 1;
        else
            if (in2 == 1)
                out2 = 1;
            else
                if (in3 == 1)
                    out1 = 1;
                else
                    begin if (in4 == 1)
                        out1 = 1;
                        out2 = 1;   
                    end      
    end
endmodule