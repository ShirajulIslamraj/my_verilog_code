`include "mux.v"
module mux_tb;
	reg [7:0]a;
	reg [2:0]s;
	wire f;
	reg clk;
	
mux g(
	.f(f),
	.a(a),
	.s(s),
	.clk(clk)
	);

initial begin
	$dumpfile("mux.vcd");
	$dumpvars(0, mux_tb);
	clk=0; s=0; a=0;
#100 $finish;
end

always #5 clk=~clk;
always #10 a=a+1;
always #15 s=s+1;

endmodule

