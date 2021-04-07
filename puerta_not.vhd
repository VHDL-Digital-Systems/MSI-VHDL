library ieee;
use ieee.std_logic_1164.all;

entity puerta_not is
	generic ( n: integer :=1);
	port(	X: in std_logic_vector(n-1 downto 0);
	S: out std_logic_vector(n-1 downto 0));
end puerta_not;

architecture sol of puerta_not is
	begin
		s<=not(X);
end sol;
