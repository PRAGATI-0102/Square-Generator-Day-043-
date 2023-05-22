`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/22/2023 10:28:48 PM
// Design Name: 
// Module Name: tb_square_gen
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


module tb_square_gen();
        
        parameter n = 4;
        reg [n-1:0] num;
        wire [2*n-1:0] out; 
 
        square_gen dut(num,out);
        
        always
        begin
            num = $random;
            #10;
        end
        
        initial
        begin
            $monitor("num = %d,out = %d",num,out);
            #100;
            $finish;
        end
endmodule
