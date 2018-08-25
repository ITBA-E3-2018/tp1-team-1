module circuit_test;
reg[3:0] in;
reg dummy;
wire[1:0] out;

encoder dut_module1 (in, out);

    initial begin
        dummy = $value$plusargs("in=%b", in);

        $display("input values are: %b", in);
        #1;
        $display("output values are: %b", out);
        $finish;
    end
endmodule