
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity switching_circuit is
--  Port ( );
Port(
   A : in std_logic;
   B : in std_logic;
   C : in std_logic;
   D : in std_logic;
   F : out std_logic
);
end switching_circuit;

architecture Behavioral of switching_circuit is
  signal Y0, Y1, Y2, Y3, Y4, Y5, Y6, Y7, Y8, Y9, Y10, Y11, Y12, Y13, Y14, Y15 : std_logic;

begin
 decoder_inst : entity work.decoder_4x16
 port map(
   A => A,
   B => B,
   C => C,
   D => D,
   Y0 => Y0,
   Y1 => Y1,
   Y2 => Y2,
   Y3 => Y3,
   Y4 => Y4,
   Y5 => Y5,
   Y6 => Y6,
   Y7 => Y7,
   Y8 => Y8,
   Y9 => Y9,
   Y10 => Y10,
   Y11 => Y11,
   Y12 => Y12,
   Y13 => Y13,
   Y14 => Y14,
   Y15 => Y15
 );

 F <= Y0 or Y1 or Y2 or Y3 or Y4 or Y5 or Y6 or Y8 or Y9 or Y12; 
 end Behavioral;
