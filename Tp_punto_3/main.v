module circuit_test;
reg in1, in2, in3, in4;
reg dummy;
wire out1, out2;

encoder dut_module1 (in1, in2, in3, in4, out1, out2);

    initial begin
        dummy = $value$plusargs("in1=%b", in1);
        dummy = $value$plusargs("in2=%b", in2);
        dummy = $value$plusargs("in3=%b", in3);
        dummy = $value$plusargs("in4=%b", in4);

        $display("input values are: %b %b %b %b", in1, in2, in3, in4);
        #1;
        $display("output values are: %b %b", out1, out2);
        $finish;
    end
endmodule