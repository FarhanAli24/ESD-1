LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_arith.ALL;
USE ieee.std_logic_unsigned.ALL;

ENTITY topLevel IS
PORT(
			CLOCK_50		:IN STD_LOGIC;
			KEY			:IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			LEDR			:OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
		);
END topLevel;

ARCHITECTURE top_level OF topLevel IS
	

	component nios_system is
		port (
			clk_clk       : in  std_logic                    := 'X'; -- clk
			key1_export   : in  std_logic                    := 'X'; -- export
			leds_export   : out std_logic_vector(7 downto 0);        -- export
			reset_reset_n : in  std_logic                    := 'X'  -- reset_n
		);
	end component nios_system;
	
BEGIN


		
	u0 : component nios_system
		port map (
			clk_clk       => CLOCK_50,       --   clk.clk
			key1_export   => KEY(1),   --  key1.export
			leds_export   => LEDR,   --  leds.export
			reset_reset_n => KEY(0)  -- reset.reset_n
		);
END ARCHITECTURE top_level;