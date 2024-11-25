----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 25.11.2024 09:31:59
-- Design Name: 
-- Module Name: GrayCode - dataflow
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity GrayCode is
    Port ( B0 : in STD_LOGIC;
           B1 : in STD_LOGIC;
           B2 : in STD_LOGIC;
           B3 : in STD_LOGIC;
           G0 : out STD_LOGIC;
           G1 : out STD_LOGIC;
           G2 : out STD_LOGIC;
           G3 : out STD_LOGIC);
end GrayCode;

architecture dataflow of GrayCode is

begin
G3 <= B3;
G2 <= B3 xor B2;
G1 <= B2 xor B1;
G0 <= B1 xor B0;

end dataflow;
