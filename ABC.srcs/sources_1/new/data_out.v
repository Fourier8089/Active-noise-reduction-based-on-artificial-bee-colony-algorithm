module
	data_out(
		reset,
		x1,
		x2,
		x3,
		x4,
		x5,
		x6,
		x7,
		x8,
		w1,
		w2,
		w3,
		w4,
		w5,
		w6,
		w7,
		w8,
		y
    );
	input reset;
	input signed [15:0] x1,x2,x3,x4,x5,x6,x7,x8;
	input signed [15:0] w1,w2,w3,w4,w5,w6,w7,w8;
	reg signed [32:0] y_tmp;
	output signed [15:0] y;
	always@(*)begin
		if(!reset)
			y_tmp<=0;
		else begin
			y_tmp<=(x1*w1+x2*w2+x3*w3+x4*w4+x5*w5+x6*w6+x7*w7+x8*w8);
		end
	end
	assign y=y_tmp>>14;
endmodule
