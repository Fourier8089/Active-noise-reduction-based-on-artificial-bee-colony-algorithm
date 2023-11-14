`timescale 1ns / 1ps
module
	tb();
	reg clk,reset;
	reg signed [15:0] x,d;
	wire signed [15:0] y;
	integer a,b,i;
	
	
	TOP TOP_0(
		.clk(clk),
		.reset(reset),
		.x(x),
		.d(d),
		.y(y)
    );
    
    always#10 begin
    	clk<=~clk;
    end
    initial begin
    	a = $fopen("F:/FPGA/ABC/ham8_xn.txt","r");
    	b = $fopen("F:/FPGA/ABC/ham8_dn.txt","r");
    	clk<=0;
    	
    	reset<=0;
    	#200;
    	reset<=1;
    	#10;
    	for(i = 0; i <= 123521; i = i + 1)begin
			begin
				$fscanf(a,"%d",x);
				$fscanf(b,"%d",d);
				#20; 
			end
		end
    end
endmodule
