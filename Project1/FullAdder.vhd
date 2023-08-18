library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

-- Implementation of Full Adder using Half Adders
-- Half Adder is implemented in Gates
entity FullAdder  is
  port (A, B, carry_in: in std_logic; 
		  S, carry_out: out std_logic);
end entity FullAdder;

architecture Struct of FullAdder is
-- Temporary signals for intermediate processing
  signal tC, tS, U, V: std_logic;
begin
  -- component instances
  ha: Half_Adder 
       port map (A => A, B => B, S => tS, C => tC);

  -- propagate carry.
  a1: And_2 port map (A => tS, B => carry_in, Y => V);
  o1: Or_2  port map (A => V, B => tC, Y => carry_out);

  -- final sum.
  x1: Xor_2 port map (A => tS, B => carry_in, Y => S);
end Struct;