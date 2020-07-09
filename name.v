`timescale 1ns / 1ps
module name(
  input high_frequency,
  input clk,
  output reg Output0, Output1, Output2, Output3, Output4, Output5, Output6, Output7,
  input [7:0] input_pattern
    );

parameter IDLE=0;
parameter HIGH_FREQUENCY=1; 

reg state0=0;	reg state1=0;	reg state2=0;	reg state3=0;
reg state4=0;	reg state5=0;	reg state6=0;	reg state7=0;
	 
initial 
begin
Output0<=1'b0; Output0<=1'b0; Output0<=1'b0; Output0<=1'b0;
Output0<=1'b0; Output0<=1'b0; Output0<=1'b0; Output0<=1'b0; 
end

always @(posedge high_frequency)
	begin
			if(state0==HIGH_FREQUENCY)
			Output0<=~Output0;
			else if(state0==IDLE)
			Output0<=0;
			
		   if(state1==HIGH_FREQUENCY)
			Output1<=~Output1;
			else if(state1==IDLE)
			Output1<=0;
			
		   if(state2==HIGH_FREQUENCY)
			Output2<=~Output2;
			else if(state2==IDLE)
			Output2<=0;
			
			if(state3==HIGH_FREQUENCY)
			Output3<=~Output3;
			else if(state3==IDLE)
			Output3<=0;
			
			if(state4==HIGH_FREQUENCY)
			Output4<=~Output4;
			else if(state4==IDLE)
			Output4<=0;
			
			if(state5==HIGH_FREQUENCY)
			Output5<=~Output5;
			else if(state5==IDLE)
			Output5<=0;
			
			if(state6==HIGH_FREQUENCY)
			Output6<=~Output6;
			else if(state6==IDLE)
			Output6<=0;
			
			if(state7==HIGH_FREQUENCY)
			Output7<=~Output7;
			else if(state7==IDLE)
			Output7<=0;
end

always @(posedge clk)
    begin 
	if(input_pattern[0]==0)
			state0<=IDLE;
	else
			state0<=HIGH_FREQUENCY;
			
	if(input_pattern[1]==0)
			state1<=IDLE;
	else
			state1<=HIGH_FREQUENCY;
			
	if(input_pattern[2]==0)
			state2<=IDLE;
	else
			state2<=HIGH_FREQUENCY;
			
	if(input_pattern[3]==0)
			state3<=IDLE;
	else
			state3<=HIGH_FREQUENCY;
			
	if(input_pattern[4]==0)
			state4<=IDLE;
	else
			state4<=HIGH_FREQUENCY;
			
	if(input_pattern[5]==0)
			state5<=IDLE;
	else
			state5<=HIGH_FREQUENCY;
			
	if(input_pattern[6]==0)
			state6<=IDLE;
	else
			state6<=HIGH_FREQUENCY;
			
	if(input_pattern[7]==0)
			state7<=IDLE;
	else
			state7<=HIGH_FREQUENCY;
end
endmodule
