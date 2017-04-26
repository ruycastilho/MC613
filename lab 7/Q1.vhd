LIBRARY ieee ; 
USE ieee.std_logic_1164.all;

ENTITY Q1 IS 
	PORT (
			A:		IN STD_LOGIC;
			B:		IN STD_LOGIC;
			Q1: 	OUT STD_LOGIC);

END Q1;

ARCHITECTURE Behavior OF Q1 IS
	BEGIN
	PROCESS (B)
	BEGIN
		IF B = '0' THEN 
			Q1 <= NOT A ; 
		END IF ; 
	END PROCESS ; 

				
END Behavior ;