`include "mux21.v"
module mux21_tb;
    reg sel, i0, i1;
    wire y;
    mux21 mux21_tb_i (
        .y(y), 
        .sel(sel),
        .i0(i0),
        .i1(i1)
        );
        initial begin
            $dumpfile("mux21.vcd");
            $dumpvars (0, mux21_tb);
            sel=0; i1=0; i0=0;
        #10 sel=0; i1=0; i0=1;
        #10 sel=0; i1=1; i0=0;
        #10 sel=0; i1=1; i0=1;
        #10 sel=1; i1=0; i0=0;
        #10 sel=1; i1=0; i0=1;
        #10 sel=1; i1=1; i0=0;
        #10 sel=1; i1=1; i0=1;

        #10 sel=0; i1=0; i0=0;
        #10 sel=0; i1=0; i0=1;
        #10 sel=0; i1=1; i0=0;
        #10 sel=0; i1=1; i0=1;
        #10 sel=1; i1=0; i0=0;
        #10 sel=1; i1=0; i0=1;
        #10 sel=1; i1=1; i0=0;
        #10 sel=1; i1=1; i0=1;

        #250 $finish;

        end
endmodule