
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_switching_circuit is
    -- No ports for a testbench
end tb_switching_circuit;

architecture Behavioral of tb_switching_circuit is
    -- Component declaration for the switching circuit
    component switching_circuit
        Port (
            A : in STD_LOGIC;
            B : in STD_LOGIC;
            C : in STD_LOGIC;
            D : in STD_LOGIC;
            F : out STD_LOGIC
        );
    end component;

    -- Testbench signals
    signal A, B, C, D : STD_LOGIC := '0'; -- Initialize all inputs to '0'
    signal F : STD_LOGIC; -- Output signal
begin
    -- Instantiate the Unit Under Test (UUT)
    uut: switching_circuit
        Port map (
            A => A,
            B => B,
            C => C,
            D => D,
            F => F
        );

    -- Stimulus process
    process
    begin
        --Test Case 1: 0000
        A <= '0'; B <= '0'; C <= '0' ; D <= '0';
        wait for 10ns;
        
        --Test Case 2: 0001
        A <= '0'; B <= '0'; C <= '0' ; D <= '1';
        wait for 10ns;
        
        --Test Case 3: 0010
        A <= '0'; B <= '0'; C <= '1' ; D <= '0';
        wait for 10ns;
        
        --Test Case 4: 0011
        A <= '0'; B <= '0'; C <= '1' ; D <= '1';
        wait for 10ns;
        
        --Test Case 5: 0100
        A <= '0'; B <= '1'; C <= '0' ; D <= '0';
        wait for 10ns;
        
        --Test Case 6: 0101
        A <= '0'; B <= '1'; C <= '0' ; D <= '1';
        wait for 10ns;
        
        --Test Case 7: 0110
        A <= '0'; B <= '1'; C <= '1' ; D <= '0';
        wait for 10ns;
        
        --Test Case 8: 0111
        A <= '0'; B <= '1'; C <= '1' ; D <= '1';
        wait for 10ns;
        
        --Test Case 9: 1000
        A <= '1'; B <= '0'; C <= '0' ; D <= '0';
        wait for 10ns;
        
        --Test Case 10: 1001
        A <= '1'; B <= '0'; C <= '0' ; D <= '1';
        wait for 10ns;
        
        --Test Case 11: 1010
        A <= '1'; B <= '0'; C <= '1' ; D <= '0';
        wait for 10ns;
        
        --Test Case 12: 1011
        A <= '1'; B <= '0'; C <= '1' ; D <= '1';
        wait for 10ns;
        
        --Test Case 13: 1100
        A <= '1'; B <= '1'; C <= '0' ; D <= '0';
        wait for 10ns;
        
        --Test Case 14: 1101
        A <= '1'; B <= '1'; C <= '0' ; D <= '1';
        wait for 10ns;
        
        --Test Case 15: 1110
        A <= '1'; B <= '1'; C <= '1' ; D <= '0';
        wait for 10ns;
        
        --Test Case 16: 1111
        A <= '1'; B <= '1'; C <= '1' ; D <= '1';
        wait for 10ns;
        
        wait;
    end process;
end Behavioral;
