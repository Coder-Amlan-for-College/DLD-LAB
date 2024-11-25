----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 25.11.2024 09:01:00
-- Design Name: 
-- Module Name: TwoBitComparator - dataflow
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
entity TwoBitComparator is
    Port ( A0 : in STD_LOGIC;
           B0 : in STD_LOGIC;
           A1 : in STD_LOGIC;
           B1 : in STD_LOGIC;
           X : out STD_LOGIC; --A=B
           Y : out STD_LOGIC; --A<B
           Z : out STD_LOGIC); --A>B
end TwoBitComparator;

architecture dataflow of TwoBitComparator is

begin
X <= (A1 xnor B1) and (A0 xnor B0);
Y <= ((not A1) and B1) or ((A1 xnor B1) and ((not A0) and B0));
Z <= (A1 and (not B1)) or ((A1 xnor B1) and (A0 and (not B0)));

end dataflow;
