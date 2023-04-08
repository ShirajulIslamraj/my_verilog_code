`include "and_gate.v"
module and_gate_tb;
reg a_in, b_in;
wire y_out;

and_gate and_gate_tb_i(.a(a_in), .b(b_in), .y(y_out));

initial begin
    $dumpfile("and_gate.vcd");
    $dumpvars(0, and_gate_tb);

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