-------------------------------------------------------------------------
-- Holly Dickens 
-- 01/31/2021
-- Lab 1 part 2 sample code 
-- This example code demonstrates how to instantiate the NIOSII processor.
-- **WARNING**: There are intentional bugs in this design. Be sure to review 
-- entire file and fix mistakes before running on your board. 
-------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

ENTITY lightsWithNios is
  port (
    CLOCK_50 : in  std_logic;
    KEY       : in  std_logic_vector(3 downto 0);
    SW        : in  std_logic_vector(9 downto 0);
    LEDR      : out std_logic_vector(9 downto 0));
end entity lightsWithNios;

architecture lights_arch of lightsWithNios is
  signal led0 : std_logic;
  signal cntr : std_logic_vector(25 downto 0);
  signal ledNios : std_logic_vector(7 downto 0);
  signal reset_n : std_logic;
  signal key0_d1 : std_logic;
  signal key0_d2 : std_logic;
  signal key0_d3 : std_logic;
  signal sw_d1 : std_logic_vector(9 downto 0);
  signal sw_d2 : std_logic_vector(9 downto 0);
  
	component nios_system is
		port (
			clk_clk         : in  std_logic                    := 'X';             -- clk
			reset_reset_n   : in  std_logic                    := 'X';             -- reset_n
			 switches_export : in  std_logic_vector(7 downto 0) := (others => 'X'); -- export
			leds_export : out std_logic_vector(7 downto 0)                     -- export
		);
	end component nios_system;
  
begin

  LEDR(9 downto 0) <= "1" & ledNios & led0;
  led0             <= cntr(24);
  
  synchReset_proc : process (CLOCK_50) begin
    if (rising_edge(CLOCK_50)) then
      key0_d1 <= KEY(0);
      key0_d2 <= key0_d1;
      key0_d3 <= key0_d2;
    end if;
  end process synchReset_proc;
  
  synchUserIn_proc : process (CLOCK_50) begin
    if (rising_edge(CLOCK_50)) then
      if (key0_d3 = '0') then
        cntr  <= "00" & x"000000";
        sw_d1 <= "00" & x"00";
        sw_d2 <= "00" & x"00";
      else
        cntr <= cntr + ("00" & x"000001");
        sw_d1 <= SW;
        sw_d2 <= sw_d1;
      end if;
    end if;
  end process synchUserIn_proc;

	u0 : component nios_system
		port map (
			clk_clk         => CLOCK_50,         --      clk.clk
			reset_reset_n   => key0_d3,   --    reset.reset_n
			leds_export     => ledNios,     --     leds.export
			switches_export => sw_d2(7 downto 0)  -- switches.export
		);

end architecture lights_arch;
