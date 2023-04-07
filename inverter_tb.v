`include "inverter.v"
module inverter_tb;
reg in_A;
wire in_B;

inverter Inverterrr (
    .A(in_A), 
    .B(in_B)
    );

initial begin
    $dumpfile("inverter.vcd");
    $dumpvars(0, inverter_tb);

    in_A = 0;
    #10 in_A = 1;
    #10 in_A = 0;
    #10 in_A = 1;
    #10 in_A = 0;
 
    #10 $finish;

end

endmodule