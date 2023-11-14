module
	TOP(
		clk,
		reset,
		x,
		d,
		y
    );
    input clk,reset;
    input signed [15:0]x,d;
    output signed [15:0] y;
    wire signed [15:0] x1,x2,x3,x4,x5,x6,x7,x8,dn;
    wire signed [15:0] en0,en1,en2,en3,en4,en5,en6,en7,en8,en9,enn0,enn1,enn2,enn3,enn4;
    wire [3:0] index;
    wire signed [15:0] w1,w2,w3,w4,w5,w6,w7,w8;
    wire signed [15:0] e;
    wire [3:0] k;
    wire signed [15:0] R;
    data data_0(
		.clk(clk),
		.reset(reset),
		.x(x),
		.d(d),
		.x1(x1),
		.x2(x2),
		.x3(x3),
		.x4(x4),
		.x5(x5),
		.x6(x6),
		.x7(x7),
		.x8(x8),
		.dn(dn)
    );
    compare compare_0(
		.en0(en0),
		.en1(en1),
		.en2(en2),
		.en3(en3),
		.en4(en4),
		.en5(en5),
		.en6(en6),
		.en7(en7),
		.en8(en8),
		.en9(en9),
		.enn0(enn0),
		.enn1(enn1),
		.enn2(enn2),
		.enn3(enn3),
		.enn4(enn4),
		.index(index)
    );
    data_out data_out_(
		.reset(reset),
		.x1(x1),
		.x2(x2),
		.x3(x3),
		.x4(x4),
		.x5(x5),
		.x6(x6),
		.x7(x7),
		.x8(x8),
		.w1(w1),
		.w2(w2),
		.w3(w3),
		.w4(w4),
		.w5(w5),
		.w6(w6),
		.w7(w7),
		.w8(w8),
		.y(y)
    );
    error error_0(
		.d(d),
		.y(y),
		.e(e)
    );
    gambling gambling_0(
		.reset(reset),
		.R(R),
		.en0(en0),
		.en1(en1),
		.en2(en2),
		.en3(en3),
		.en4(en4),
		.en5(en5),
		.en6(en6),
		.en7(en7),
		.en8(en8),
		.en9(en9),
		.k(k)
    );
    random random_0(
		.clk(clk),
		.reset(reset),
		.R(R)
    );
    update update_0(
		.clk(clk),
		.reset(reset),
		.R(R),
		.w1(w1),
		.w2(w2),
		.w3(w3),
		.w4(w4),
		.w5(w5),
		.w6(w6),
		.w7(w7),
		.w8(w8),
		.e(e),
		.k(k),
		.en0(en0),
		.en1(en1),
		.en2(en2),
		.en3(en3),
		.en4(en4),
		.en5(en5),
		.en6(en6),
		.en7(en7),
		.en8(en8),
		.en9(en9),
		.enn0(enn0),
		.enn1(enn1),
		.enn2(enn2),
		.enn3(enn3),
		.enn4(enn4),
		.index(index)
    );
endmodule
