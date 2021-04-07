library ieee;
use ieee.std_logic_1164.all;

entity gray is
	generic ( n: integer :=4);
	port(X: in std_logic_vector(n-1 downto 0);
		S: out std_logic_vector(n-1 downto 0));
end gray;

architecture sol of gray is
	begin
		s(3)<=x(3)xor'0';
		s(2)<=x(2)xor x(3);
		s(1)<=x(1)xor x(2);
		s(0)<=x(0)xor x(1);
end sol;