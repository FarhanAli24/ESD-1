library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

ENTITY TimeQuest_Demo IS
 PORT(
 
	CLOCK : in std_logic;
	
	A : in std_logic_vector(15 downto 0);
	b : in std_logic_vector(15 downto 0);
	
	result : out std_logic_vector(15 downto 0)

 );
END ENTITY TimeQuest_Demo;

ARCHITECTURE rtl OF TimeQuest_Demo IS

signal qA : signed(15 downto 0) := (others => '0');
signal dA : signed(15 downto 0) := (others => '0');

signal qB : signed(15 downto 0) := (others => '0');
signal dB : signed(15 downto 0) := (others => '0');

signal result_sig : signed(15 downto 0) := (others => '0');

begin

dA <= signed(A);
dB <= signed(B);

process(CLOCK)
begin

	if rising_edge(CLOCK) then
		qA <= dA;
		qB <= dB;
		
		result_sig<=qA + qB;
		
	end if;
	
	
end process;
 --convert back to std
 result <= std_logic_vector(result_sig);
END ARCHITECTURE rtl;