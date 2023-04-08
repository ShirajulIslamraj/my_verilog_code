`include "nand_gate.v"
module nand_gate_tb;
reg a_in, b_in;
wire y_out;

nand_gate nand_gate_tb_i(.a(a_in), .b(b_in), .y(y_out));

initial begin
    $dumpfile("nand_gate.vcd");
    $dumpvars(0, nand_gate_tb);

    a_in = 0;
    b_in = 0;
    #10
    a_in = 0;
    b_in = 1;
    #10
    a_in = 1;
    b_in = 0;
    #10
    a_in = 1;
    b_in = 1;
    
    #10 $finish;
end
endmodule