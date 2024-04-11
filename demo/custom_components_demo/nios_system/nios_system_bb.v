
module nios_system (
	clk_clk,
	custom_ip_ext_addr,
	custom_ip_invalid,
	custom_ip_ext_data,
	reset_reset_n);	

	input		clk_clk;
	input	[2:0]	custom_ip_ext_addr;
	input		custom_ip_invalid;
	output	[31:0]	custom_ip_ext_data;
	input		reset_reset_n;
endmodule
