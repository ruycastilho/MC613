LIBRARY ieee ;
USE ieee.std_logic_1164.all ;

ENTITY ContadorMod10 IS
	PORT (  	Enable:	IN STD_LOGIC;
				L:			IN	INTEGER RANGE 0 TO 9  ;
				Load:		IN	STD_LOGIC;
				Clock: 	IN	STD_LOGIC ;
				Q: 		BUFFER INTEGER RANGE 0 TO 9 );
END ContadorMod10 ;

ARCHITECTURE Behavior OF ContadorMod10 IS
	BEGIN
		PROCESS ( Clock )
		BEGIN
			IF (Clock'EVENT AND Clock = '1') THEN
				IF (Load = '1') THEN
					Q <= L ;
				ELSIF ( Q = 9 ) THEN
					Q <= 0 ;
				ELSE
					Q <= Q + 1 ;
				END IF;
				
			END IF;

	
		END PROCESS;
END Behavior;