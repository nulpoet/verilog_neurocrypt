`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:52:33 02/04/2012 
// Design Name: 
// Module Name:    counter 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module counter (rst, clk, count, tc);
// enable CEP is a clock enable only
// enable CET is a clock enable and
// enables the TC output
// a counter using the Verilog language
 
parameter size = 5;
parameter length = 20;
 
input rst; // These inputs/outputs represent 
input clk; // connections to the module.
 
output [size-1:0] count;
output tc;
 
reg [size-1:0] count; // Signals assigned 
                      // within an always 
                      // (or initial)block 
                      // must be of type reg
 
wire tc; // Other signals are of type wire
 
// The always statement below is a parallel
// execution statement that
// executes any time the signals 
// rst or clk transition from low to high
 
always @ (posedge clk or posedge rst)
  if (rst) // This causes reset of the cntr
    count <= {size{1'b0}};
  else
	if (count == length-1)
	  count <= {size{1'b0}};
	else
	  count <= count + 1'b1;
 
// the value of tc is continuously assigned 
// the value of the expression
assign tc = (count == length-1);
 
endmodule