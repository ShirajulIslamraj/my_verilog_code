module mux21 (y, sel, i0, i1);
    input sel, i0, i1;
    output y;
    //not g0(selb, sel);
    and g1(w1, i0, ~sel);
    and g2(w2, i1, sel);
    or g3(y, w1, w2);
    
endmodule