LIBRARY ieee ; 
USE ieee.std_logic_1164.all;

-- PACKAGE
PACKAGE crossbarC_package IS

COMPONENT crossbarC 
	PORT (x1, x2, s:	IN STD_LOGIC; 
			y1, y2: 	OUT STD_LOGIC);
END COMPONENT; 


END crossbarC_package;



LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
LIBRARY work ;
USE work.all ;

ENTITY crossbarD IS
	GENERIC ( N: INTEGER := 1);
	PORT (X1, X2:	IN STD_LOGIC;
			S:			IN STD_LOGIC_VECTOR(N-1 DOWNTO 0);
			Y1, Y2: 	OUT STD_LOGIC);

END crossbarD;

ARCHITECTURE Structure OF crossbarD IS
	
	SIGNAL temp1 : STD_LOGIC_VECTOR(0 TO N-1);
	SIGNAL temp2 : STD_LOGIC_VECTOR(0 TO N-1);

	BEGIN 
		Crossbar1: crossbarC PORT MAP  
		( X1, X2, S(0), temp1(0), temp2(0));
			
		C1:
			FOR i IN 0 TO N-3 GENERATE 
				Crossbars: crossbarC PORT MAP 
				( temp1(i), temp2(i), S(N-2-i), temp1(i+1), temp2(i+1) ) ; 
				
			END GENERATE;
			
		C2: IF N > 1 GENERATE 
				CrossbarN: crossbarC PORT MAP  
				( temp1(N-2), temp2(N-2), S(N-1), temp1(N-1), temp2(N-1)) ; 
		END GENERATE ; 
		
		Y1 <= temp1(N-1);
		Y2 <= temp2(N-1);

END Structure ; 
