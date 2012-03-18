`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:02:37 02/11/2012 
// Design Name: 
// Module Name:    accumulater 
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
module accumulater(
    input clk,
    input rst,
	 input setzero,
    input [12:0] feed,
	 input addflag,
    output reg [12:0] value
    );

	/*always @(posedge rst) begin
		value = 0;
	end*/

	reg [13:0] buffer;

	always @(posedge clk or posedge rst) begin
		if (rst) begin
			buffer = 0;
		end
		else begin
			value = buffer;
			if (setzero) begin
				buffer = 0;
			end
		
			if(addflag)
				buffer = buffer + feed;
			else
				buffer = buffer - feed;			
		end
		
		$display("acc :: value : %b,  feed : %b, rst : %b, setzero : %b, buffer : %b", value, feed, rst, setzero, buffer);
	end
endmodule