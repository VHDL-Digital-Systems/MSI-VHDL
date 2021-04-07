library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity sum4 is
	generic ( n: integer :=4);
	port(A,B,C,D: in std_logic_vector(n-1 downto 0);
		S: out std_logic_vector(n+1 downto 0));
end sum4;

architecture sol of sum4 is
	begin
		s<=("00"&A)+("00"&B)+("00"&C)+("00"&D);
end sol;