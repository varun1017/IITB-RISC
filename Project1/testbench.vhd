library ieee, std;
use ieee.std_logic_1164.all;

entity testbench is
end entity;

architecture tb of testbench is
	component IITB_PROC is
	port (
    clk,rst     : in  std_logic;
	 op : out std_logic_vector(3 downto 0)
	 );
	end component;
	signal clk, rst : std_logic := '0';
	signal op : std_logic_vector(3 downto 0);
begin
	dut_instance: IITB_PROC -- input is being given here
		port map (clk => clk,
			rst => rst,
			op => op);
	process	
	begin
		for I in 0 to 512 loop
			clk <= '1';
			wait for 2.5 ns;
			clk <= '0';
			wait for 2.5 ns;
		end loop;
	end process;
end tb;