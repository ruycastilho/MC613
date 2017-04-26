LIBRARY ieee ; 
USE ieee.std_logic_1164.all;
LIBRARY work ; 
USE work.all;

ENTITY ex1 IS 
	PORT (m:		IN STD_LOGIC;
			n:		IN STD_LOGIC;
			A:		IN STD_LOGIC;
			B:		IN STD_LOGIC;
			clk:	IN STD_LOGIC;
			oQ1: 	OUT STD_LOGIC;
			oQ2: 	OUT STD_LOGIC;
			oQ3: 	OUT STD_LOGIC;
			oQ4: 	OUT STD_LOGIC;
			oQ5: 	OUT STD_LOGIC;
			oQ6: 	OUT STD_LOGIC);
END ex1;

ARCHITECTURE Structure OF ex1 IS
	BEGIN

	comp1: Q1 PORT MAP (A, B, oQ1);
	
	comp2: Q2 PORT MAP (A, B, clk, oQ2);
	
	comp3: Q3 PORT MAP (A, clk, oQ3);
	
	comp4: Q4 PORT MAP (A, clk, oQ4);
	
	comp5: Q5 PORT MAP (A, B, m, clk, oQ5);
	
	comp6: Q6 PORT MAP (B, clk, oQ6);
				
END Structure ;