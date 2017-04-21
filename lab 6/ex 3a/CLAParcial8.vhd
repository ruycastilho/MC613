LIBRARY ieee ; 
USE ieee.std_logic_1164.all;
LIBRARY work ;
USE work.all ;

ENTITY CLAParcial8 IS 
	PORT (X:		IN STD_LOGIC_VECTOR(7 DOWNTO 0);
			Y:		IN STD_LOGIC_VECTOR(7 DOWNTO 0);
			cin:	IN STD_LOGIC;
			cout:	OUT STD_LOGIC;
			F: 	OUT STD_LOGIC_VECTOR(7 DOWNTO 0));

END CLAParcial8;

ARCHITECTURE Behavior OF CLAParcial8 IS
	SIGNAL cout_cla1: STD_LOGIC;
	BEGIN

	cla1: CLA4 PORT MAP
		(X(3 DOWNTO 0), Y(3 DOWNTO 0), cin, cout_cla1, F(3 DOWNTO 0));

	cla2: CLA4 PORT MAP
		(X(7 DOWNTO 4), Y(7 DOWNTO 4), cout_cla1, cout, F(7 DOWNTO 4));
		
END Behavior;