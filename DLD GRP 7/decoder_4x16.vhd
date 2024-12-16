
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decoder_4x16 is
--  Port ( );
Port(
   A : in std_logic;
   B : in std_logic;
   C : in std_logic;
   D : in std_logic;
   Y0 : out std_logic;
   Y1 : out std_logic;
   Y2 : out std_logic;
   Y3 : out std_logic;
   Y4 : out std_logic;
   Y5 : out std_logic;
   Y6 : out std_logic;
   Y7 : out std_logic;
   Y8 : out std_logic;
   Y9 : out std_logic;
   Y10 : out std_logic;
   Y11 : out std_logic;
   Y12 : out std_logic;
   Y13 : out std_logic;
   Y14 : out std_logic;
   Y15 : out std_logic
);

end decoder_4x16;

architecture Behavioral of decoder_4x16 is
 signal inputs : std_logic_vector(3 downto 0);
begin
process(A, B, C, D)
begin
   inputs <= A & B & C & D;
    -- Reset all outputs to '0'
    Y0 <= '0'; 
    Y1 <= '0'; 
    Y2 <= '0'; 
    Y3 <= '0';
    Y4 <= '0'; 
    Y5 <= '0'; 
    Y6 <= '0'; 
    Y7 <= '0';
    Y8 <= '0'; 
    Y9 <= '0'; 
    Y10 <= '0'; 
    Y11 <= '0';
    Y12 <= '0'; 
    Y13 <= '0'; 
    Y14 <= '0'; 
    Y15 <= '0';
    case inputs is
        when "0000" => Y0 <= '1';
        when "0001" => Y1 <= '1';
        when "0010" => Y2 <= '1';
        when "0011" => Y3 <= '1';
        when "0100" => Y4 <= '1';
        when "0101" => Y5 <= '1';
        when "0110" => Y6 <= '1';
        when "0111" => Y7 <= '1';
        when "1000" => Y8 <= '1';
        when "1001" => Y9 <= '1';
        when "1010" => Y10 <= '1';
        when "1011" => Y11 <= '1';
        when "1100" => Y12 <= '1';
        when "1101" => Y13 <= '1';
        when "1110" => Y14 <= '1';
        when "1111" => Y15 <= '1';
        when others => null; -- Do nothing for unexpected cases
    end case;
end process;
end Behavioral;
