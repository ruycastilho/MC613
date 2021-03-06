LIBRARY ieee ; 
USE ieee.std_logic_1164.all;

ENTITY Q4 IS 
	PORT (
			A:		IN STD_LOGIC;
			clk:		IN STD_LOGIC;
			Q4: 	OUT STD_LOGIC);

END Q4;

ARCHITECTURE Behavior OF Q4 IS
	BEGIN
	PROCESS
	BEGIN
		WAIT UNTIL clk'EVENT AND clk = '0' ;
			Q4 <= A ; 
	END PROCESS;

				
END Behavior ;