module
	data(
		clk,
		reset,
		x,
		d,
		x1,
		x2,
		x3,
		x4,
		x5,
		x6,
		x7,
		x8,
		dn
    );
    input clk,reset;
    input signed [15:0] x,d;
    output reg signed [15:0] x1,x2,x3,x4,x5,x6,x7,x8,dn;
	reg [11:0] cnt;
	always@(posedge clk or negedge reset)begin
		if(!reset)
			cnt<=0;
		else if(cnt==2499)
			cnt<=0;
		else
			cnt<=cnt+1;
	end
    always@(posedge clk or negedge reset)begin
    	if(!reset)begin
			x1<=0;
			x2<=0;
			x3<=0;
			x4<=0;
			x5<=0;
			x6<=0;
			x7<=0;
			x8<=0;
    	end
		else if(cnt==2499) begin
			x1<=x;
			x2<=x1;
			x3<=x2;
			x4<=x3;
			x5<=x4;
			x6<=x5;
			x7<=x6;
			x8<=x7;
		end
    end
	always@(posedge clk or negedge reset)begin
    	if(!reset)begin
			dn<=0;
    	end
		else if(cnt==2499) begin
			dn<=d;
		end
    end
endmodule
