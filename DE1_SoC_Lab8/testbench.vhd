LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.ALL;
use ieee.numeric_std.all;
use ieee.std_logic_signed.all;
use IEEE.STD_LOGIC_TEXTIO.ALL;
use STD.TEXTIO.ALL;

entity testbench is
end testbench;

architecture arch of testbench is 

component HighPassFilter IS
PORT (
		clk				: in std_logic;     
		KEY				: in std_logic;     
		filter_en 		: in std_logic;		
		data_in			: in std_logic_vector(15 downto 0); 
		data_out		: out signed(15 downto 0) 

		);
end component;


SIGNAL sim_done 				: boolean := false;

constant period     			: time := 20 ns;                                              

signal clk          			: std_logic := '0';

signal reset_n        		: std_logic ;

signal filter_en        	: std_logic:= '0'; 

signal data_in        		: std_logic_vector(15 downto 0):= (OTHERS => '0'); 

signal data_out        		: signed(15 downto 0):= (OTHERS => '0');

type array_type1  is array (0 to 39) of signed(15 downto 0);

signal audioSampleArray : array_type1 ; 


BEGIN 


 clk <= not clk after period/2; 

uut : HighPassFilter 

	PORT MAP
	(
		clk => clk,
		
		KEY => reset_n,
		
		filter_en 	=> filter_en,
		
		data_in		=> data_in,
		
		data_out		=> data_out
			
	);
	

	
async_reset: process
  	
		begin
  
			reset_n<= '0';
	
		wait for 2 * period;
	 
	
		reset_n <= '1';
	
   wait;

end process async_reset; 


stimulus : process is 
  file read_file : text open read_mode is "./src/verification_src/one_cycle_200_8k.csv";
  file results_file : text open write_mode is "./src/verification_src/output_waveform.csv";
  variable lineIn : line;
  variable lineOut : line;
  variable readValue : integer;
  variable writeValue : integer;
  
begin

  for i in 0 to 39 loop
  
    readline(read_file, lineIn);
	
    read(lineIn, readValue);
	
    audioSampleArray(i) <= to_signed(readValue, 16);
    
	wait for 50 ns;
	
  end loop;
  file_close(read_file);
  
  for i in 1 to 10 loop
  
  for j in 0 to 39 loop    

		data_in <= std_logic_vector(audioSampleArray(j));
		filter_en <= '1';
		WAIT UNTIL rising_edge(clk);
      filter_en <= '0';
		WAIT UNTIL rising_edge(clk);
		
		
		-- Write filter output to file
      writeValue := to_integer(data_out);
      write(lineOut, writeValue);
      writeline(results_file, lineOut);
      
	    
    end loop;
  end loop;

  file_close(results_file);


  sim_done <= true;
  wait for 100 ns;

  wait;

end process stimulus;

  
end architecture arch;
	
	
 




		
		
		