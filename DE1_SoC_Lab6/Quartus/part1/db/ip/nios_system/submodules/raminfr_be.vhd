LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.ALL;


ENTITY raminfr_be IS
 PORT(
 clk : IN std_logic;
 reset_n : IN std_logic;
 --write_n : IN std_logic;
 writebyteenable_n : IN std_logic_vector(3 DOWNTO 0);
 address : IN std_logic_vector(11 DOWNTO 0);
 writedata : IN std_logic_vector(31 DOWNTO 0);

 --
 readdata : OUT std_logic_vector(31 DOWNTO 0)
 );
END ENTITY raminfr_be;



ARCHITECTURE rtl OF raminfr_be IS
 
 TYPE ram_type IS ARRAY (4095 DOWNTO 0) OF std_logic_vector (7 DOWNTO 0);
 
 SIGNAL RAM1 : ram_type;
 SIGNAL RAM2 : ram_type;
 SIGNAL RAM3 : ram_type;
 SIGNAL RAM4 : ram_type;
 
 SIGNAL read_addr : std_logic_vector(11 DOWNTO 0);
 
BEGIN
 RamBlock1 : PROCESS(clk)
 BEGIN
 
 IF (clk'event AND clk = '1') THEN
 
	 IF (reset_n = '0') THEN
	 
		read_addr <= (OTHERS => '0'); 
	
	
	ElSIF (writebyteenable_n(3) = '0') THEN
	 
		RAM1(conv_integer(address)) <= writedata(31 downto 24);
		
	END IF;
	
	read_addr <= address;
	 
 END IF;
 END PROCESS RamBlock1;
 
 
 RamBlock2 : PROCESS(clk)
 BEGIN
 
 IF (clk'event AND clk = '1') THEN
	
	IF (writebyteenable_n(2) = '0') THEN
	 
		RAM2(conv_integer(address)) <= writedata(23 downto 16);
		
	END IF;
	

	 
 END IF;
 END PROCESS RamBlock2;
 

 RamBlock3 : PROCESS(clk)
 BEGIN
 
 IF (clk'event AND clk = '1') THEN
 
	
	IF (writebyteenable_n(1) = '0') THEN
	 
		RAM3(conv_integer(address)) <= writedata(15 downto 8);
		
	END IF;
	

 END IF;
 END PROCESS RamBlock3;
 

 RamBlock4 : PROCESS(clk)
 BEGIN
 
 IF (clk'event AND clk = '1') THEN
 
	
	IF (writebyteenable_n(0) = '0') THEN
	 
		RAM4(conv_integer(address)) <= writedata(31 downto 24);
		
	END IF;
	
	 
 END IF;
 END PROCESS RamBlock4;
 
 readdata <= RAM1(conv_integer(read_addr)) & RAM2(conv_integer(read_addr)) & RAM3(conv_integer(read_addr)) & RAM4(conv_integer(read_addr));
END ARCHITECTURE rtl;