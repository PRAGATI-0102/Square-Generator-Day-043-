`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/22/2023 10:24:36 PM
// Design Name: 
// Module Name: square_gen
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module square_gen(num,out);

        parameter n = 4;
        input [n-1:0] num;
        output reg [2*n-1:0] out; 
        
        reg [2*n-1:0] temp;
        
        always@(*)
        begin
            temp = num * num;
            out = temp;
        end
endmodule
