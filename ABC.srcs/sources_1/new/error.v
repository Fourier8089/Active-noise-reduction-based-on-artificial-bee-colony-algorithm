module
	error(
		d,
		y,
		e
    );
	input signed [15:0] d,y;
	output signed [15:0] e;
	assign e=d+y;
	
endmodule
