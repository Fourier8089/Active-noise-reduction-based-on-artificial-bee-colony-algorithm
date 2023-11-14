module
	compare(
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
		enn0,
		enn1,
		enn2,
		enn3,
		enn4,
		index
    );
	input signed [15:0] en0,en1,en2,en3,en4,en5,en6,en7,en8,en9,enn0,enn1,enn2,enn3,enn4;
	reg signed [15:0] tmp;
	output reg [3:0] index;
	reg [3:0] index1;
	reg signed [15:0] En [14:0];
	always@(*)begin
		En[0]=en0;
		En[1]=en1;
		En[2]=en2;
		En[3]=en3;
		En[4]=en4;
		En[5]=en5;
		En[6]=en6;
		En[7]=en7;
		En[8]=en8;
		En[9]=en9;
		En[10]=enn0;
		En[11]=enn1;
		En[12]=enn2;
		En[13]=enn3;
		En[14]=enn4;
	end
	reg [4:0] i;
	always@(*)begin
		tmp=En[0];
		for(i=1;i<15;i=i+1)begin
			if(En[i]<tmp)
				tmp=En[i];
				index1=i;
		end
		index=index1;			
	end
endmodule
