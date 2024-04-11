library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;


ENTITY testBench is
end entity testBench;



architecture test of testBench is



	component raminfr_be is
	PORT(
	 clk : IN std_logic;
	 reset_n : IN std_logic;

	 writebyteenable_n : IN std_logic_vector(3 DOWNTO 0);
	 address : IN std_logic_vector(11 DOWNTO 0);
	 writedata : IN std_logic_vector(31 DOWNTO 0);

	 
	 readdata : OUT std_logic_vector(31 DOWNTO 0)
	 );
	end component raminfr_be;


signal clk_sig            :std_logic := '0';
signal reset_sig         :std_logic := '0';


signal writebyteenable_n : std_logic_vector(3 DOWNTO 0);
signal address : std_logic_vector(11 DOWNTO 0);
signal writedata : std_logic_vector(31 DOWNTO 0);


signal readdata : std_logic_vector(31 DOWNTO 0);


constant PERIOD     : time := 20ns;
SIGNAL sim_done 	       : boolean := false;
CONSTANT RESULTS_DELAY_c : integer := 4; -- depends on your design

begin


UUT: raminfr_be port map(
     
	 clk => clk_sig,
	 reset_n => reset_sig,
	 
	 writebyteenable_n => writebyteenable_n,
	 address => address,
	 writedata => writedata,

	 --
	 readdata => readdata

);




-- Clk process
clk_sig <= NOT clk_sig AFTER PERIOD/2 WHEN (NOT sim_done) ELSE '0';


verification: process
begin
wait until clk_sig = '1';
WAIT UNTIL (clk_sig = '1');
-- reset process
reset_sig <= '1'; 
wait for 100 ns;
---------RAM ALL---------------------------------------
writebyteenable_n <= "0000"; --Write 32 bits


----Writing 32bits RAM-------
for i in 0 to 4095 loop
	
	
	writedata <= x"12345678";--writing word=32 bit test values
	address <= std_logic_vector(to_signed(i,address'length));--must cast 12
	wait for 100 ns;
	
end loop;


wait for 100 ns;

---32bits RAM Verification---------
for j in 0 to 4095 loop
	--need test case
	
	--if data is not equal then report failed memory address value, Using sevarity Failure: Terminates program
	assert readdata = x"12345678" report "Word: Failed at Address: " & integer'image(j) severity failure;
	

end loop;


--****************************************************

------------------------------------------------------------
--writing halfword = 16bits. Use 2 RAM modules since each 7bits we need to use 14bits 
writebyteenable_n <= "1100";--using bottom 2

for i in 0 to 4095 loop
	writedata <= x"0000AAAA";--testing half word = 16bits
	address <= std_logic_vector(to_signed(i,address'length));--must cast 12
	wait for 100 ns;
	
end loop;


---16bits RAM Verification---------
for j in 0 to 4095 loop
	
	--if data is not equal then report failed memory address value
	assert readdata = x"1234AAAA" report "HalfWord Failed at Address: " & integer'image(j) severity failure;
	

end loop;

------------------------------------------------------------

writebyteenable_n <= "0011";--top 2


for i in 0 to 4095 loop
	writedata <= x"BBBB0000";
	address <= std_logic_vector(to_signed(i,address'length));
	wait for 100 ns;
	
end loop;



--8bits RAM Verification-------
for j in 0 to 4095 loop

	assert readdata = x"BBBBAAAA" report "Address: " & integer'image(j) severity failure;
	
end loop;

------------------------------------------------------------
--writing 8 bit test
writebyteenable_n <= "1110";


for i in 0 to 4095 loop
	writedata <= x"000000CC";--testing 8 bits
	address <= std_logic_vector(to_signed(i,address'length));
	wait for 100 ns;
	
end loop;



--8bits RAM Verification-------
for j in 0 to 4095 loop

	assert readdata = x"BBBBAACC" report "8bits Failed at Address: " & integer'image(j) severity failure;
	
end loop;



------------------------------------------------------------
--writing 4 bit test
------------------------------------------------------------

writebyteenable_n <= "0111";


for i in 0 to 4095 loop
	writedata <= x"DD000000";
	address <= std_logic_vector(to_signed(i,address'length));
	wait for 100 ns;
	
end loop;


for j in 0 to 4095 loop

	assert readdata = x"DDBBAACC" report "Address: " & integer'image(j) severity failure;
	
end loop;




------------------------------------------------------------

writebyteenable_n <= "1011";


for i in 0 to 4095 loop
	writedata <= x"00EE0000";
	address <= std_logic_vector(to_signed(i,address'length));
	wait for 100 ns;
	
end loop;



--8bits RAM Verification-------
for j in 0 to 4095 loop

	assert readdata = x"DDEEAACC" report "Address: " & integer'image(j) severity failure;
	
end loop;




------------------------------------------------------------

writebyteenable_n <= "1101";


for i in 0 to 4095 loop
	writedata <= x"0000BB00";
	address <= std_logic_vector(to_signed(i,address'length));
	wait for 100 ns;
	
end loop;



for j in 0 to 4095 loop

	assert readdata = x"DDEEBBCC" report "Address: " & integer'image(j) severity failure;
	
end loop;




-- Disable all signals 
WAIT UNTIL (clk_sig = '1');
WAIT FOR RESULTS_DELAY_c * PERIOD;
		
sim_done <= true;
		
-- Wait here forever
WAIT;

end process;





end architecture test;