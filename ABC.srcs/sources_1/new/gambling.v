module
	gambling(
		reset,
		R,
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
	input reset;
	input signed [15:0] R;
	reg signed [15:0] RAND;
	input signed [15:0] en0,en1,en2,en3,en4,en5,en6,en7,en8,en9;
	output reg [3:0] k;
	reg signed [16:0] E;
	always@(*)begin
		E=en0+en1+en2+en3+en4+en5+en6+en7+en8+en9;
		RAND=R%E;
	end
	always@(*)begin
		if(RAND<en0)
			k=0;
		else if(en0<RAND<en0+en1)
			k=1;
		else if(en0+en1<RAND<en0+en1+en2)
			k=2;
		else if(en0+en1+en2<RAND<en0+en1+en2+en3)
			k=3;
		else if(en0+en1+en2+en3<RAND<en0+en1+en2+en3+en4)
			k=4;
		else if(en0+en1+en2+en3+en4<RAND<en0+en1+en2+en3+en4+en5)
			k=5;
		else if(en0+en1+en2+en3+en4+en5<RAND<en0+en1+en2+en3+en4+en5+en6)
			k=6;
		else if(en0+en1+en2+en3+en4+en5+en6<RAND<en0+en1+en2+en3+en4+en5+en6+en7)
			k=7;
		else if(en0+en1+en2+en3+en4+en5+en6+en7<RAND<en0+en1+en2+en3+en4+en5+en6+en7+en8)
			k=8;
		else if(en0+en1+en2+en3+en4+en5+en6+en7+en8<RAND<en0+en1+en2+en3+en4+en5+en6+en7+en8+en9)
			k=9;
	end

	
endmodule
