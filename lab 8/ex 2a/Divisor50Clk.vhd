LIBRARY ieee ;
USE ieee.std_logic_1164.all ;

ENTITY Divisor50Clk IS
	PORT ( 	clk_in:	IN 	STD_LOGIC;
				clk_out:	OUT 	STD_LOGIC);

END Divisor50Clk ;

ARCHITECTURE Behavior OF Divisor50Clk IS
	SIGNAL Count : INTEGER RANGE 0 TO 50  ;
	BEGIN
		PROCESS ( clk_in )
		BEGIN

			IF (clk_in = '1') THEN
				Count <= Count + 1 ;
				
				IF ( Count = 50 ) THEN
					Count <= 0;
					clk_out <= '1';
				
				END IF;

			ELSIF (Count = 0) THEN
				clk_out <= '0';
			END IF;
			
		END PROCESS ;
END Behavior ;