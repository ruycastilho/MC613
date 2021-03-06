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
	PROCESS (A, B) 
		VARIABLE temp: std_logic;
	BEGIN
      temp := (NOT(A) AND NOT(temp)) OR (B and temp);
		
		Q1 <= temp;
	END PROCESS;
				
END Behavior ;