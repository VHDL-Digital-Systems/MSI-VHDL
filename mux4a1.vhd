library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux4a1 is
generic ( n: integer:=4);--1
port (
   A : in std_logic_vector(n-1 downto 0);
	B : in std_logic_vector(n-1 downto 0);
	C : in std_logic_vector(n-1 downto 0);
	D : in std_logic_vector(n-1 downto 0);
	sel : in std_logic_vector(1 downto 0);
	en: in std_logic;
  	Q : out std_logic_vector(n-1 downto 0));
end mux4a1;

architecture Behavioral of mux4a1 is
	signal f: std_logic_vector(n-1 downto 0);
begin
with sel select 
	f<= A when "00",
		 B when "01",
		 C when "10",
		 D when others;
	Q<= f when en='1' else (others=>'0');	 
end Behavioral;
