LIBRARY ieee ;
USE ieee.std_logic_1164.all ;

ENTITY RegN IS
	GENERIC ( N : INTEGER := 8 ) ;
		PORT (
			R: 						IN STD_LOGIC_VECTOR(N-1 DOWNTO 0) ;
			L, Clock, Resetn: 	IN STD_LOGIC ;
			Q: 						OUT STD_LOGIC_VECTOR(N-1 DOWNTO 0) ) ;
END RegN ;

ARCHITECTURE Behavior OF RegN IS
	BEGIN
		PROCESS (Resetn, Clock)
			BEGIN
			IF Resetn = '0' THEN
				Q <= (OTHERS => '0') ;
			
			ELSIF Clock'EVENT AND Clock = '1' THEN
				
				IF L = '1' THEN
					Q <= R ;
				END IF ;
			END IF ;

		END PROCESS ;
END Behavior ;