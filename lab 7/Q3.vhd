LIBRARY ieee ; 
USE ieee.std_logic_1164.all;

ENTITY Q3 IS 
	PORT (
			A:		IN STD_LOGIC;
			clk:		IN STD_LOGIC;
			Q3: 	OUT STD_LOGIC);

END Q3;

ARCHITECTURE Behavior OF Q3 IS
	BEGIN
	PROCESS (clk, A) 
	BEGIN
		IF clk='1' THEN
			Q3 <= A;
		END IF; 
	END PROCESS;

				
END Behavior ;