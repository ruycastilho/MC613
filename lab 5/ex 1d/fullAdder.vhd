LIBRARY ieee ; 
USE ieee.std_logic_1164.all;

ENTITY fullAdder IS 
	PORT (x:		IN STD_LOGIC;
			y:		IN STD_LOGIC;
			cin: 	IN STD_LOGIC;
			f:		OUT STD_LOGIC;
			cout: OUT STD_LOGIC);

END fullAdder;

ARCHITECTURE Behavior OF fullAdder IS
	BEGIN
	f 		<= x XOR y XOR cin;
	cout 	<= (x AND y) OR (x AND cin) OR (cin AND y);

END Behavior ;