library ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.ALL;
use ieee.numeric_std.all;
use ieee.std_logic_signed.all;

entity Lab8 is

	port(
		
			clk  					       :IN  std_logic;
			KEY 						    :IN std_logic;
			filter_en 				    :IN std_Logic; 				
			data_in					    :IN std_logic_vector(15 downto 0); 
			data_out						 :OUT signed(15 downto 0)  
			
		);	
		
end Lab8;

ARCHITECTURE beh OF Lab8 IS
    
signal reset_n 				 : std_logic;
signal key0_d1 				 : std_logic;
signal key0_d2 				 : std_logic;
signal key0_d3 				 : std_logic;

type low_pass_array is array (0 to 16) of signed( 15 downto 0);
	
	  signal low_pass_s: low_pass_array:= (	
	  
	  x"0051", 
	  x"00BA", 
	  x"01E1", 
	  x"0408", 
	  x"071A", 
	  x"0AAC", 
	  x"0E11", 
	  x"107F",
	  x"1161", 
	  x"107F",
	  x"0E11", 
	  x"0AAC", 
	  x"071A", 
	  x"0408", 
	  x"01E1",
	  x"00BA",
	  x"0051"
   );
	 

type multiArray is array (0 to 16) of signed(31 downto 0);

signal multiplyCoef : multiArray ;

type shifted_data is array (0 to 16) of signed(15 downto 0);

signal shifts : shifted_data;

Component multiplier IS 

	PORT 
		( 
		
			dataa 	: IN STD_LOGIC_VECTOR (15 DOWNTO 0);
			datab 	: IN STD_LOGIC_VECTOR (15 DOWNTO 0);
			result   : OUT STD_LOGIC_VECTOR(31 DOWNTO 0) 
			
		);
END Component multiplier;

BEGIN

  synchReset_proc : process (clk) 
  
  begin
  
    if (rising_edge(clk)) then
      
	  key0_d1 <= KEY;
      
	  key0_d2 <= key0_d1;
      
	  key0_d3 <= key0_d2;
    
	end if;
  
  end process synchReset_proc;
  reset_n <= key0_d3;

	Low_PassFilter : for i in 0 to 16 generate 

	
					low_Pass : multiplier
			
			Port Map 
				(
					dataa 				=> std_logic_vector(shifts(i)),
					datab    			=> std_logic_vector(low_pass_s(i) ),
					
					signed(result) 	=> multiplyCoef(i)
				);
	End generate Low_PassFilter;
	
data_out <= 
			  multiplyCoef(0)  (30 downto 15)
			  +multiplyCoef(1)  (30 downto 15)
			  +multiplyCoef(2)  (30 downto 15)
			  +multiplyCoef(3)  (30 downto 15)
			  +multiplyCoef(4)  (30 downto 15)
			  +multiplyCoef(5)  (30 downto 15)
			  +multiplyCoef(6)  (30 downto 15)
			  +multiplyCoef(7)  (30 downto 15)
			  +multiplyCoef(8)  (30 downto 15)
			  +multiplyCoef(9)  (30 downto 15)
			  +multiplyCoef(10) (30 downto 15)
			  +multiplyCoef(11) (30 downto 15)
			  +multiplyCoef(12) (30 downto 15)
			  +multiplyCoef(13) (30 downto 15)
			  +multiplyCoef(14) (30 downto 15)
			  +multiplyCoef(15) (30 downto 15)
			  +multiplyCoef(16) (30 downto 15);
			  
data_shifted: PROCESS (clk,reset_n)
	
BEGIN 

	IF (clk'event AND clk = '1') THEN
	
		IF (reset_n = '0') THEN 
			shifts <= ( others => (others => '0'));
		elsif (filter_en = '1') THEN
			shifts(0) <= signed(data_in);
			
			for j in 1 to shifts'length-1 loop
					shifts(j) <= shifts(j-1);
			end loop;
		end if;
	end if;
END PROCESS data_shifted; 

END ARCHITECTURE beh;