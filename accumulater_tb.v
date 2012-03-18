`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:11:11 02/11/2012
// Design Name:   accumulater
// Module Name:   C:/Documents and Settings/nc/accumulater_tb.v
// Project Name:  nc
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: accumulater
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module accumulater_tb;

	// Inputs
	reg clk;
	reg rst;
	reg [12:0] feed;
	reg addflag;

	// Outputs
	wire [13:0] value;

	// Instantiate the Unit Under Test (UUT)
	accumulater uut (
		.clk(clk), 
		.rst(rst), 
		.feed(feed), 
		.addflag(addflag), 
		.value(value)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 0;
		feed = 11;
		addflag = 1'b1;

		// Wait 100 ns for global reset to finish
		#100;
		rst = 1;
		#100;
		rst = 0;
      
		#5 clk = ~clk;
		#5 clk = ~clk;
		
		#5 clk = ~clk;
		#5 clk = ~clk;
		
		addflag = 1'b0;
				
		#5 clk = ~clk;
		#5 clk = ~clk;
		
		#5 clk = ~clk;
		#5 clk = ~clk;
				
		#5 clk = ~clk;
		#5 clk = ~clk;
		
		// Add stimulus here

	end
	
	//always begin
		//#5 clk = ~clk; // Toggle clock every 5 ticks
	//end
   
endmodule

