module
	gambling(
		clk,
		reset,
		en0,
		en1,
		en2,
		en3,
		en4,
		en5,
		en6,
		en7,
		en8,
		en9,
		k
    );
	input clk,reset;
	input signed [15:0] en0,en1,en2,en3,en4,en5,en6,en7,en8,en9;
	output reg [3:0] k;
endmodule
