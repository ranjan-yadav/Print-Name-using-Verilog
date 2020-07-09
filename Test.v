`timescale 1ns / 1ps
module Test;

	// Inputs
	reg high_frequency;
	reg [7:0] input_pattern;
	reg clk;

	// Outputs
	wire Output0;
	wire Output1;
	wire Output2;
	wire Output3;
	wire Output4;
	wire Output5;
	wire Output6;
	wire Output7;

	// Instantiate the Unit Under Test (UUT)
	name uut (
		.high_frequency(high_frequency), 
		.clk(clk),
		.Output0(Output0), 
		.Output1(Output1), 
		.Output2(Output2), 
		.Output3(Output3), 
		.Output4(Output4), 
		.Output5(Output5), 
		.Output6(Output6), 
		.Output7(Output7), 
		.input_pattern(input_pattern)
	);


initial begin high_frequency=0; end
always #1 high_frequency=~high_frequency;

initial begin clk=0; end
always #10 clk=~clk;
      
initial
begin

//print M pattern
input_pattern=8'b11111111;    // HOW TO TYPE ANY LETTER, SO LET'S TAKE "M"
#20                           //
input_pattern=8'b00000010;    //  LSB #     # S0 input at 1 clock is 8'b1111111;
#20                           //      ##   ## S0 input at 2 clock is 8'b0000010;
input_pattern=8'b00000100;    //      # # # # S0 input at 3 clock is 8'b0000100;
#20                           //      #  #  # S0 input at 4 clock is 8'b0001000;
input_pattern=8'b00001000;    //      #     # S0 input at 5 clock is 8'b0000100;
#20                           //      #     # S0 input at 6 clock is 8'b0000010;
input_pattern=8'b00000100;    //      #     # S0 input at 7 clock is 8'b1111111;
#20                           //  MSB #     # S0 input at 8 clock is 8'b0000000;// for space
input_pattern=8'b00000010;    //
#20                           //
input_pattern=8'b11111111;    //
#20                           //
input_pattern=8'b00000000;    //

//space
#20
input_pattern=8'b00000000;

//print A pattern
input_pattern=8'b11111000;
#20
input_pattern=8'b00001100;
#20
input_pattern=8'b00001010;
#20
input_pattern=8'b00001001;
#20
input_pattern=8'b00001010;
#20
input_pattern=8'b00001100;
#20
input_pattern=8'b11111000;
#20
input_pattern=8'b00000000;

//space
#20
input_pattern=8'b00000000;

//print T
input_pattern=8'b00000001;
#20
input_pattern=8'b00000001;
#20
input_pattern=8'b00000001;
#20
input_pattern=8'b11111111;
#20
input_pattern=8'b00000001;
#20
input_pattern=8'b00000001;
#20
input_pattern=8'b00000001;
#20
input_pattern=8'b00000000;

//space
#20
input_pattern=8'b00000000;

//print A pattern
input_pattern=8'b11111000;
#20
input_pattern=8'b00001100;
#20
input_pattern=8'b00001010;
#20
input_pattern=8'b00001001;
#20
input_pattern=8'b00001010;
#20
input_pattern=8'b00001100;
#20
input_pattern=8'b11111000;
#20
input_pattern=8'b00000000;

//space
#20
input_pattern=8'b00000000;

//print M pattern
input_pattern=8'b11111111;
#20
input_pattern=8'b00000010;
#20
input_pattern=8'b00000100;
#20
input_pattern=8'b00001000;
#20
input_pattern=8'b00000100;
#20
input_pattern=8'b00000010;
#20
input_pattern=8'b11111111;
#20
input_pattern=8'b00000000;

//space
#20
input_pattern=8'b00000000;

//print A pattern
input_pattern=8'b11111000;
#20
input_pattern=8'b00001100;
#20
input_pattern=8'b00001010;
#20
input_pattern=8'b00001001;
#20
input_pattern=8'b00001010;
#20
input_pattern=8'b00001100;
#20
input_pattern=8'b11111000;
#20
input_pattern=8'b00000000;

//space
#20
input_pattern=8'b00000000;

//print T
input_pattern=8'b10000001;
#20
input_pattern=8'b10000001;
#20
input_pattern=8'b10000001;
#20
input_pattern=8'b11111111;
#20
input_pattern=8'b10000001;
#20
input_pattern=8'b10000001;
#20
input_pattern=8'b10000001;
#20
input_pattern=8'b00000000;

//space
#20
input_pattern=8'b00000000;
end
endmodule
