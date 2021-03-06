LIBRARY ieee ;
USE ieee.std_logic_1164.all ;

ENTITY Divisor50Clk IS
	PORT ( 	clk_in:	IN 	STD_LOGIC;
				clk_out:	OUT 	STD_LOGIC);

END Divisor50Clk ;

ARCHITECTURE Behavior OF Divisor50Clk IS
	SIGNAL Count : INTEGER RANGE 0 TO 25000000  := 0;
	SIGNAL clk_temp: STD_LOGIC := '0';
	
	BEGIN
		PROCESS ( clk_in )
		BEGIN

			IF ( clk_in'EVENT AND clk_in = '1') THEN
	
				Count <= Count + 1 ;
				
				IF ( Count = 25000000 ) THEN
					Count <= 0;
					clk_temp <=  NOT clk_temp;
				END IF;
				
			END IF;
			
		END PROCESS ;
		clk_out <= clk_temp;
		
END Behavior ;