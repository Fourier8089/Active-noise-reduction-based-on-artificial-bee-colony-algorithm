module
	random(
		clk,
		reset,
		R
    );
	input clk,reset;
	reg signed [15:0] seed;
	output reg signed [15:0] R;
	always @(posedge clk) begin
		if(!reset)
			R<=0;
        else begin
            seed <= seed ^ ((seed << 13) ^ (seed >> 19) ^ (seed << 17) ^ (seed >> 7));
            R<= seed;
        end
    end
endmodule
