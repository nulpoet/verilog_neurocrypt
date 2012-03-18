`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:56:37 02/04/2012
// Design Name:   counter
// Module Name:   C:/Documents and Settings/nc/counter_tb.v
// Project Name:  nc
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: counter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module counter_tb;

	// Inputs
	reg rst;
	reg clk;

	// Outputs
	wire [4:0] count;
	wire tc;

	// Instantiate the Unit Under Test (UUT)
	counter uut (
		.rst(rst), 
		.clk(clk), 
		.count(count), 
		.tc(tc)
	);

	initial begin
		// Initialize Inputs
		rst = 0;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
      rst = 1;
		#100
		rst = 0;
		// Add stimulus here

	end
	
	always begin
	  #5 clk = ~clk; // Toggle clock every 5 ticks
	end
   
endmodule
