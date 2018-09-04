`include "ShiftLeft.v" 
`include "Bit4Adder.v" 
`include "Res4Bit.v"
`include "Comp2.v"
`include "SimpleAdder.v"
`include "Not.v"
`include "And.v"
`include "Or.v"
`include "Xor.v"

module ALU(n1,n2,operator,CCR,X);

//input-Output Port Declarations
input [3:0] n1,n2;
input [2:0] operator;
output [3:0] X;
output [1:0] CCR;

//----Input Ports Data Type----//
wire [3:0] n1,n2;
wire [2:0] operator;
reg [3:0]  X;
reg [1:0] CCR;

//---Variables---//
wire [3:0] ResS;
wire [3:0] ResR;
wire [3:0] ResL;
wire [3:0] ResC;
wire [3:0] ResN;
wire [3:0] ResA;
wire [3:0] ResO;
wire [3:0] ResX;


wire Carry;
wire Overflow;
wire Carry1;
wire Overflow1;

//--Conexion de Modulos--//
Bit4Adder SUMA(n1,n2,ResS,Carry,Overflow);
Res4Bit   RESTA(n1,n2,ResR,Carry1,Overflow1);
ShiftLeft SHL(n1, ResL);
gate_level_module C2(n1[3], n1[2], n1[1], n1[0], ResC[3], ResC[2], ResC[1], ResC[0]);
NOT NO(n1,ResN);
AND A(n1,n2,ResA);
OR O(n1,n2,ResO);
XOR Xo(n1,n2,ResX);


always@(*)begin

if(operator==3'b000)begin
X=ResS;
CCR={Carry,Overflow};
end
else if(operator==3'b001)begin
X=ResR;
CCR={Carry1,Overflow1};
end
else if(operator==3'b010)begin
X=ResL;
CCR=2'b00;
end
else if(operator==3'b011)begin
X=ResC;
CCR=2'b00;
end
else if(operator==3'b100)begin
X=ResN;
CCR=2'b00;
end
else if(operator==3'b101)begin
X=ResA;
CCR=2'b00;
end
else if(operator==3'b110)begin
X=ResO;
CCR=2'b00;
end
else if(operator==3'b111)begin
X=ResX;
CCR=2'b00;
end
else 
$display("Operación No Permitida");
end

endmodule