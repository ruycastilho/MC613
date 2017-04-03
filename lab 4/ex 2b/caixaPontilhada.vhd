LIBRARY ieee ; 
USE ieee.std_logic_1164.all;

ENTITY caixaPontilhada IS 
	PORT (
			y:		IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			w:		IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			f: 	OUT STD_LOGIC_VECTOR(3 DOWNTO 0));

END caixaPontilhada;

ARCHITECTURE Behavior OF caixaPontilhada IS
	BEGIN 
	f(0) <= w(0) AND y(0);
	f(1) <= w(1) AND y(1);
	f(2) <= w(2) AND y(2);
	f(3) <= w(3) AND y(3);

END Behavior ;