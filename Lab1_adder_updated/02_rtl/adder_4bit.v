module adder_4bit(X,Y,S,Cout);
input [3:0] X, Y;
output [3:0] S;
output Cout;
wire C0, C1, C2;

adder_1bit A0(X[0],Y[0],1'b0,S[0],C0);
adder_1bit A1(X[1],Y[1],C0,  S[1],C1);
adder_1bit A2(X[2],Y[2],C1,  S[2],C2);
adder_1bit A3(X[3],Y[3],C2,  S[3],Cout);

endmodule
