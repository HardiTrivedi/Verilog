module FullAdder ( In1,In2,Cin,Sum,Cout);
	input  In1,In2,Cin;
	output  Sum,Cout;
	assign Sum  = (In1 ^ In2) ^ Cin;
	assign Cout = (In1 & In2) | (In2 & Cin) | (Cin & In1);
endmodule

module FullAdder4bit ( I1,I2,Ci,S,Co);
	input  [3:0] I1,I2
	input Ci;
	output [3:0] S
	output Co;
	wire [2:0] C;
	FullAdder B0(C[0],S[0],I1[0],I2[0],Ci);
	FullAdder B1(C[1],S[1],I1[1],I2[1],C[0]);
	FullAdder B2(C[2],S[2],I1[2],I2[2],C[1]);
	FullAdder B3(Co,S[3],I1[3],I2[3],C[2]);
endmodule