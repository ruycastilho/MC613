LIBRARY ieee ; 
USE ieee.std_logic_1164.all;

ENTITY Q5 IS 
	PORT (
			A:		IN STD_LOGIC;
			B:		IN STD_LOGIC;
			m:		IN STD_LOGIC;
			clk:	IN STD_LOGIC;
			Q5: 	OUT STD_LOGIC);

END Q5;

ARCHITECTURE Behavior OF Q5 IS
	BEGIN
	PROCESS (clk, m) 
		VARIABLE temp: std_logic;
	BEGIN
		IF m='0' THEN   
			temp := '1';
		ELSIF (clk'event and clk='1') THEN                        
			temp := (A AND NOT(temp)) OR (NOT(B) and temp);
		END if; 
		Q5 <= temp;
	END PROCESS;

				
END Behavior ;