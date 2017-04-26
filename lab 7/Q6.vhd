LIBRARY ieee ; 
USE ieee.std_logic_1164.all;

ENTITY Q6 IS 
	PORT (
			B:		IN STD_LOGIC;
			clk:	IN STD_LOGIC;
			Q6: 	OUT STD_LOGIC);

END Q6;

ARCHITECTURE Behavior OF Q6 IS
	BEGIN
	PROCESS (clk)
		VARIABLE temp: STD_LOGIC := '0';
	BEGIN
		WAIT UNTIL clk'EVENT AND clk = '1' ;
			IF B = '1' THEN
				temp := NOT temp;
		END IF;
		Q6 <= temp;
	END PROCESS;

				
END Behavior ;