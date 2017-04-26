LIBRARY ieee ; 
USE ieee.std_logic_1164.all;

ENTITY Q2 IS 
	PORT (
			A:		IN STD_LOGIC;
			B:		IN STD_LOGIC;
			Q1: 	OUT STD_LOGIC);

END Q2;

ARCHITECTURE Behavior OF Q2 IS
	BEGIN
	PROCESS (B)
	BEGIN
		IF B = '0' THEN 
			Q1 <= NOT A ; 
		END IF ; 
	END PROCESS ; 

				
END Behavior ;