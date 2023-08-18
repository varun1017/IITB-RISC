library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

--Implementation of the 16 bit as a RCA using Full Adders
entity bitAdder16 is
  port (A,B: in std_logic_vector(15 downto 0);carry_in: in std_logic; carry_out: out std_logic; sum: out std_logic_vector(15 downto 0));
end entity bitAdder16;
architecture Struct of bitAdder16 is
  signal ti1, ti2,ti3,ti4,ti5,ti6,ti7,ti8,ti9,ti10,ti11,ti12,ti13,ti14,ti15: std_logic;
component FullAdder  is
  port (A, B, carry_in: in std_logic; S, carry_out: out std_logic);
end component FullAdder;
begin
       
  -- component instances
       fa0: FullAdder
       port map (A => A(0), B => B(0) , carry_in=>carry_in, S => sum(0), carry_out => ti1 );
       fa1: FullAdder
       port map (A => A(1), B => B(1) , carry_in=> ti1, S => sum(1), carry_out => ti2 );
       fa2: FullAdder
       port map (A => A(2), B => B(2) , carry_in=> ti2, S => sum(2), carry_out => ti3 );
		 fa3: FullAdder
       port map (A => A(3), B => B(3) , carry_in=> ti3, S => sum(3), carry_out => ti4 );
		 fa4: FullAdder
       port map (A => A(4), B => B(4) , carry_in=> ti4, S => sum(4), carry_out => ti5 );
		 fa5: FullAdder
       port map (A => A(5), B => B(5) , carry_in=> ti5, S => sum(5), carry_out => ti6 );
		 fa6: FullAdder
       port map (A => A(6), B => B(6) , carry_in=> ti6, S => sum(6), carry_out => ti7 );
		 fa7: FullAdder
       port map (A => A(7), B => B(7) , carry_in=> ti7, S => sum(7), carry_out => ti8 );
		 fa8: FullAdder
       port map (A => A(8), B => B(8) , carry_in=> ti8, S => sum(8), carry_out => ti9 );
		 fa9: FullAdder
       port map (A => A(9), B => B(9) , carry_in=> ti9, S => sum(9), carry_out => ti10 );
		 fa10: FullAdder
       port map (A => A(10), B => B(10) , carry_in=> ti10, S => sum(10), carry_out => ti11 );
		 fa11: FullAdder
       port map (A => A(11), B => B(11) , carry_in=> ti11, S => sum(11), carry_out => ti12 );
		 fa12: FullAdder
       port map (A => A(12), B => B(12) , carry_in=> ti12, S => sum(12), carry_out => ti13 );
		 fa13: FullAdder
       port map (A => A(13), B => B(13) , carry_in=> ti13, S => sum(13), carry_out => ti14 );
		 fa14: FullAdder
       port map (A => A(14), B => B(14) , carry_in=> ti14, S => sum(14), carry_out => ti15 );
		 fa15: FullAdder
       port map (A => A(15), B => B(15) , carry_in=> ti15, S => sum(15), carry_out => carry_out );
  -- propagate carry.
end Struct;