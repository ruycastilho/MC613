LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY ContadorMod10 IS
	PORT (  	Enable:	IN STD_LOGIC;
				L:			IN	STD_LOGIC_VECTOR(3 DOWNTO 0);
				Load:		IN	STD_LOGIC;
				Clock: 	IN	STD_LOGIC ;
				Q: 		BUFFER STD_LOGIC_VECTOR(3 DOWNTO 0));
END ContadorMod10 ;

ARCHITECTURE Behavior OF ContadorMod10 IS
	BEGIN
		PROCESS ( Clock )
		BEGIN
			IF (Clock'EVENT AND Clock = '1') THEN
				IF (Load = '1') THEN
					Q <= L ;
				ELSIF ( Q = "1001" ) THEN
					Q <= "0000";
				ELSE
					Q <= Q + '1' ;
				END IF;
				
			END IF;

	
		END PROCESS;
END Behavior;