 module mux(f,a,s,clk);
		input [7:0]a;
		input [2:0]s;
		input clk;
		output reg f;
	integer k,i;
always @(posedge clk)
	
	for(k=0;k<=7;k=k+1)
	  	begin
			for(i=0;i<=2;i=i+1)
				begin
			      if(s==i)
			       f<=a+k;
				end
				
        end
endmodule
	  