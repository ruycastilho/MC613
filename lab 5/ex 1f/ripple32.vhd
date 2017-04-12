LIBRARY ieee ; 
USE ieee.std_logic_1164.all;
LIBRARY work; 
USE work.all;

ENTITY ripple32 IS 
	GENERIC (N : INTEGER := 32);
	PORT (x:		IN STD_LOGIC_VECTOR(N-1 DOWNTO 0);
			y:		IN STD_LOGIC_VECTOR(N-1 DOWNTO 0);
			cin: 	IN STD_LOGIC;
			f:		OUT STD_LOGIC_VECTOR(N-1 DOWNTO 0);
			cout: OUT STD_LOGIC;
			v: OUT STD_LOGIC);

END ripple32;

ARCHITECTURE Behavior OF ripple32 IS
	SIGNAL c_temp : STD_LOGIC_VECTOR(N-1 DOWNTO 0);

	BEGIN	
		fa1: fullAdder PORT MAP
		( x(0), y(0), cin, f(0), c_temp(0));

		g1: FOR i IN 1 TO N-1 GENERATE
			FA: fullAdder PORT MAP
			(x(i), y(i), c_temp(i-1), f(i), c_temp(i));
			
		END GENERATE;

		cout 	<= c_temp(N-1);
		v 		<= c_temp(N-2) XOR c_temp(N-1);
	
END Behavior ;