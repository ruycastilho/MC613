LIBRARY ieee ;
USE ieee.std_logic_1164.all ;

ENTITY Shifter IS
	GENERIC ( N : INTEGER := 8 ) ;
	PORT ( 	ParIn:	IN 		STD_LOGIC_VECTOR(N-1 DOWNTO 0);
				clk:	 	IN     	STD_LOGIC;
				SerIn: 	IN       STD_LOGIC;
				modo: 	IN 		STD_LOGIC_VECTOR(1 DOWNTO 0);
				ParOut: 	BUFFER 	STD_LOGIC_VECTOR(N-1 DOWNTO 0) ) ;
END Shifter ;

ARCHITECTURE Behavior OF Shifter IS
	BEGIN
		PROCESS
		BEGIN
			WAIT UNTIL clk'EVENT AND clk = '1' ;
				CASE (modo) is
					WHEN "11" => 
						ParOut <= ParIn;
						
					WHEN "10" => 
						shiftright:
							FOR i IN 0 TO N-2 LOOP
								ParOut(i) <= ParOut(i+1) ;
								
							END LOOP;
							
						ParOut(N-1) <= SerIn;
						
					WHEN "01" => 
						shiftleft:
							FOR i IN 0 TO N-2 LOOP
								ParOut(i+1) <= ParOut(i) ;
								
							END LOOP;
							
						ParOut(0) <= SerIn;
						
					WHEN OTHERS =>
						ParOut <= ParOut;
	
				END CASE;
		END PROCESS ;
END Behavior ;