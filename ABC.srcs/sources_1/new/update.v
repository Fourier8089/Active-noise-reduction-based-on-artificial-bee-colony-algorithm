module
	update(
		clk,
		reset,
		R,
		w1,
		w2,
		w3,
		w4,
		w5,
		w6,
		w7,
		w8,
		e,
		k,
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
	input clk,reset;
	input signed [15:0] R,k;
	input signed [15:0] e;
	input [3:0] index;
	reg signed [15:0] Wn1 [9:0],Wn2 [9:0],Wn3 [9:0],Wn4 [9:0],Wn5 [9:0],Wn6 [9:0],Wn7 [9:0],Wn8 [9:0];
	reg signed [15:0] Wnn1 [4:0],Wnn2 [4:0],Wnn3 [4:0],Wnn4 [4:0],Wnn5 [4:0],Wnn6 [4:0],Wnn7 [4:0],Wnn8 [4:0];
	reg [7:0] cnt1,cnt;
	output reg signed [15:0] w1,w2,w3,w4,w5,w6,w7,w8;
	output reg signed [15:0] en0,en1,en2,en3,en4,en5,en6,en7,en8,en9;
	output reg signed [15:0] enn0,enn1,enn2,enn3,enn4;
	//cnt1计数
	always@(posedge clk or negedge reset)begin
		if(!reset)
			cnt1<=0;
		else if(cnt1==124)
			cnt1<=0;
		else
			cnt1<=cnt1+1;
	end
	//cnt计数
		always@(posedge clk or negedge reset)begin
		if(!reset)
			cnt<=0;
		else if(cnt1==124)
			cnt<=cnt+1;
		else if(cnt==19)
			cnt<=0;
		else
			cnt<=cnt;
	end
	wire signed [15:0] r=16'b0100_0000_0000_0000; 
	always@(posedge clk)begin
		if(!reset)begin
			w1<=0;
			w2<=0;
			w3<=0;
			w4<=0;
			w5<=0;
			w6<=0;
			w7<=0;
			w8<=0;
		end
		else 
			case(cnt)
				0:begin
					Wn1[0]<=w1+R%r;
					Wn2[0]<=w2+R%r;
					Wn3[0]<=w3+R%r;
					Wn4[0]<=w4+R%r;
					Wn5[0]<=w5+R%r;
					Wn6[0]<=w6+R%r;
					Wn7[0]<=w7+R%r;
					Wn8[0]<=w8+R%r;
					if(cnt1==62)
						en0<=e;
				end
				1:begin
					Wn1[1]<=w1+R%r;
					Wn2[1]<=w2+R%r;
					Wn3[1]<=w3+R%r;
					Wn4[1]<=w4+R%r;
					Wn5[1]<=w5+R%r;
					Wn6[1]<=w6+R%r;
					Wn7[1]<=w7+R%r;
					Wn8[1]<=w8+R%r;
					if(cnt1==62)
						en1<=e;
				end
				2:begin
					Wn1[2]<=w1+R%r;
					Wn2[2]<=w2+R%r;
					Wn3[2]<=w3+R%r;
					Wn4[2]<=w4+R%r;
					Wn5[2]<=w5+R%r;
					Wn6[2]<=w6+R%r;
					Wn7[2]<=w7+R%r;
					Wn8[2]<=w8+R%r;
					if(cnt1==62)
						en2<=e;
				end
				3:begin
					Wn1[3]<=w1+R%r;
					Wn2[3]<=w2+R%r;
					Wn3[3]<=w3+R%r;
					Wn4[3]<=w4+R%r;
					Wn5[3]<=w5+R%r;
					Wn6[3]<=w6+R%r;
					Wn7[3]<=w7+R%r;
					Wn8[3]<=w8+R%r;
					if(cnt1==62)
						en3<=e;
				end
				4:begin
					Wn1[4]<=w1+R%r;
					Wn2[4]<=w2+R%r;
					Wn3[4]<=w3+R%r;
					Wn4[4]<=w4+R%r;
					Wn5[4]<=w5+R%r;
					Wn6[4]<=w6+R%r;
					Wn7[4]<=w7+R%r;
					Wn8[4]<=w8+R%r;
					if(cnt1==62)
						en4<=e;
				end
				5:begin
					Wn1[5]<=w1+R%r;
					Wn2[5]<=w2+R%r;
					Wn3[5]<=w3+R%r;
					Wn4[5]<=w4+R%r;
					Wn5[5]<=w5+R%r;
					Wn6[5]<=w6+R%r;
					Wn7[5]<=w7+R%r;
					Wn8[5]<=w8+R%r;
					if(cnt1==62)
						en5<=e;
				end
				6:begin
					Wn1[6]<=w1+R%r;
					Wn2[6]<=w2+R%r;
					Wn3[6]<=w3+R%r;
					Wn4[6]<=w4+R%r;
					Wn5[6]<=w5+R%r;
					Wn6[6]<=w6+R%r;
					Wn7[6]<=w7+R%r;
					Wn8[6]<=w8+R%r;
					if(cnt1==62)
						en6<=e;
				end
				7:begin
					Wn1[7]<=w1+R%r;
					Wn2[7]<=w2+R%r;
					Wn3[7]<=w3+R%r;
					Wn4[7]<=w4+R%r;
					Wn5[7]<=w5+R%r;
					Wn6[7]<=w6+R%r;
					Wn7[7]<=w7+R%r;
					Wn8[7]<=w8+R%r;
					if(cnt1==62)
						en7<=e;
				end
				8:begin
					Wn1[8]<=w1+R%r;
					Wn2[8]<=w2+R%r;
					Wn3[8]<=w3+R%r;
					Wn4[8]<=w4+R%r;
					Wn5[8]<=w5+R%r;
					Wn6[8]<=w6+R%r;
					Wn7[8]<=w7+R%r;
					Wn8[8]<=w8+R%r;
					if(cnt1==62)
						en8<=e;
				end
				9:begin
					Wn1[9]<=w1+R%r;
					Wn2[9]<=w2+R%r;
					Wn3[9]<=w3+R%r;
					Wn4[9]<=w4+R%r;
					Wn5[9]<=w5+R%r;
					Wn6[9]<=w6+R%r;
					Wn7[9]<=w7+R%r;
					Wn8[9]<=w8+R%r;
					if(cnt1==62)
						en9<=e;
				end
				
				//已经传回了轮盘赌的结�?
				11:begin
					Wnn1[0]<=Wn1[k]+R%r;
					Wnn2[0]<=Wn2[k]+R%r;
					Wnn3[0]<=Wn3[k]+R%r;
					Wnn4[0]<=Wn4[k]+R%r;
					Wnn5[0]<=Wn5[k]+R%r;
					Wnn6[0]<=Wn6[k]+R%r;
					Wnn7[0]<=Wn7[k]+R%r;
					Wnn8[0]<=Wn8[k]+R%r;
					if(cnt1==62)
						enn0<=e;
				end
				12:begin
					Wnn1[1]<=Wn1[k]+R%r;
					Wnn2[1]<=Wn2[k]+R%r;
					Wnn3[1]<=Wn3[k]+R%r;
					Wnn4[1]<=Wn4[k]+R%r;
					Wnn5[1]<=Wn5[k]+R%r;
					Wnn6[1]<=Wn6[k]+R%r;
					Wnn7[1]<=Wn7[k]+R%r;
					Wnn8[1]<=Wn8[k]+R%r;
					if(cnt1==62)
						enn1<=e;
				end
				13:begin
					Wnn1[2]<=Wn1[k]+R%r;
					Wnn2[2]<=Wn2[k]+R%r;
					Wnn3[2]<=Wn3[k]+R%r;
					Wnn4[2]<=Wn4[k]+R%r;
					Wnn5[2]<=Wn5[k]+R%r;
					Wnn6[2]<=Wn6[k]+R%r;
					Wnn7[2]<=Wn7[k]+R%r;
					Wnn8[2]<=Wn8[k]+R%r;
					if(cnt1==62)
						enn2<=e;
				end
				14:begin
					Wnn1[3]<=Wn1[k]+R%r;
					Wnn2[3]<=Wn2[k]+R%r;
					Wnn3[3]<=Wn3[k]+R%r;
					Wnn4[3]<=Wn4[k]+R%r;
					Wnn5[3]<=Wn5[k]+R%r;
					Wnn6[3]<=Wn6[k]+R%r;
					Wnn7[3]<=Wn7[k]+R%r;
					Wnn8[3]<=Wn8[k]+R%r;
					if(cnt1==62)
						enn3<=e;
				end
				15:begin
					Wnn1[4]<=Wn1[k]+R%r;
					Wnn2[4]<=Wn2[k]+R%r;
					Wnn3[4]<=Wn3[k]+R%r;
					Wnn4[4]<=Wn4[k]+R%r;
					Wnn5[4]<=Wn5[k]+R%r;
					Wnn6[4]<=Wn6[k]+R%r;
					Wnn7[4]<=Wn7[k]+R%r;
					Wnn8[4]<=Wn8[k]+R%r;
					if(cnt1==62)
						enn4<=e;
				end
				
				//已经传回了最佳权值的索引
				17:begin
					if(index<=9)begin
						w1 =Wn1[index];
						w2 =Wn2[index];
						w3 =Wn3[index];
						w4 =Wn4[index];
						w5 =Wn5[index];
						w6 =Wn6[index];
						w7 =Wn7[index];
						w8 =Wn8[index];
					end
					else begin
						w1 =Wnn1[index-10];
						w2 =Wnn2[index-10];
						w3 =Wnn3[index-10];
						w4 =Wnn4[index-10];
						w5 =Wnn5[index-10];
						w6 =Wnn6[index-10];
						w7 =Wnn7[index-10];
						w8 =Wnn8[index-10];
					end
					
				end
				
			
			endcase
	end
	
endmodule
