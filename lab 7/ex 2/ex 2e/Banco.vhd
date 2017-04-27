LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
LIBRARY work ;
USE work.all ;

ENTITY Banco IS
		PORT (
			DATA_IN: 						IN STD_LOGIC_VECTOR(3 DOWNTO 0) ;
			SW: 								IN STD_LOGIC_VECTOR(5 DOWNTO 0) ;
			Rd_En, Wr_En, Clk, Resetn:	IN STD_LOGIC;
			DATA_OUT: 						OUT STD_LOGIC_VECTOR(3 DOWNTO 0) ) ;
END Banco ;

ARCHITECTURE Behavior OF Banco IS
	SIGNAL R2D: 		STD_LOGIC_VECTOR(7 DOWNTO 0);
	SIGNAL D2R: 		STD_LOGIC_VECTOR(7 DOWNTO 0);	
	SIGNAL output: 	STD_LOGIC_VECTOR(31 DOWNTO 0);
	
	BEGIN	
		
		decodD2R: decod3x8 PORT MAP
		(SW(2 DOWNTO 0), Rd_En, D2R);
		
		
		decodR2D: decod3x8 PORT MAP
		(SW(5 DOWNTO 3), Wr_En, R2D);
		
		g1: FOR i IN 0 TO 7 GENERATE
			registers:  regN GENERIC MAP(N => 4)
							PORT MAP 
							(DATA_IN, D2R(i) , Clk, Resetn, output((4*i + 3) DOWNTO 4*i));
							
			bufferTri:  BufferTriState GENERIC MAP(N => 4)
							PORT MAP 
							(output((4*i + 3) DOWNTO 4*i), R2D(i), DATA_OUT);
		END GENERATE;

END Behavior ;