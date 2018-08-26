module circuit_test; //prueba para los modulos encoder decoder mux y demux
reg[3:0] in1;
reg[1:0] in2;
reg[3:0] in3;

reg dummy;
wire[1:0] out1;
wire[3:0] out2;
wire out3;

reg [1:0] select_lines;

encoder dut_module1 (in1, out1);
decoder dut_module2 (in2, out2);
mux dut_module3 (in3, out3, select_lines);

    initial begin
        dummy = $value$plusargs("in1=%b", in1);
        dummy = $value$plusargs("in2=%b", in2);
        dummy = $value$plusargs("in3=%b", in3);
        dummy = $value$plusargs("select_lines=%b", select_lines);

        $display("input values are: %b %b %b %b", in1, in2, in3, select_lines);
        #1;
        $display("output values are: %b %b %b", out1, out2, out3);
        $finish;
    end
endmodule