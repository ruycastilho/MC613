LIBRARY ieee ; 
USE ieee.std_logic_1164.all;
LIBRARY work ;
USE work.all ;

ENTITY CLA8 IS 
	PORT (X:		IN STD_LOGIC_VECTOR(7 DOWNTO 0);
			Y:		IN STD_LOGIC_VECTOR(7 DOWNTO 0);
			cin:	IN STD_LOGIC;
			cout:	OUT STD_LOGIC;
			F: 	OUT STD_LOGIC_VECTOR(7 DOWNTO 0));

END CLA8;

ARCHITECTURE Behavior OF CLA8 IS
	SIGNAL c: STD_LOGIC_VECTOR(7 DOWNTO 0);
	SIGNAL g: STD_LOGIC_VECTOR(7 DOWNTO 0);
	SIGNAL p: STD_LOGIC_VECTOR(7 DOWNTO 0);
	SIGNAL ignored_cout: STD_LOGIC;
	BEGIN
	
	c(0) <= cin;
	g(0) <= (X(0) AND Y(0));
	p(0) <= c(0) AND (X(0) OR Y(0));

	fa0: fullAdder PORT MAP
		(X(0), Y(0), c(0), F(0), ignored_cout);
	
	g1: FOR i IN 1 TO 7 GENERATE

		g(i) <= (X(i) AND Y(i));
		p(i) <= c(i) AND (X(i) OR Y(i));
		c(i) <= g(i-1) OR (p(i-1) AND c(i-1));
		
		fa: fullAdder PORT MAP
		(X(i), Y(i), c(i), F(i), ignored_cout);
		
	END GENERATE;

	cout <= g(7) OR (p(7) AND c(7));
	
	
END Behavior;