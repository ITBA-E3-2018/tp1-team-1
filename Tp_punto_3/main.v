module circuit_test;
reg[3:0] in1;
reg[1:0] in2;
reg dummy;
wire[1:0] out1;
wire[3:0] out2;

encoder dut_module1 (in1, out1);
decoder dut_module2 (in2, out2);

    initial begin
        dummy = $value$plusargs("in1=%b", in1);
        dummy = $value$plusargs("in2=%b", in2);

        $display("input values are: %b %b", in1, in2);
        #1;
        $display("output values are: %b %b", out1, out2);
        $finish;
    end
endmodule