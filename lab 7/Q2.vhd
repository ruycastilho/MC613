LIBRARY ieee ; 
USE ieee.std_logic_1164.all;

ENTITY Q2 IS 
	PORT (
			A:		IN STD_LOGIC;
			B:		IN STD_LOGIC;
			clk:		IN STD_LOGIC;
			Q2: 	OUT STD_LOGIC);

END Q2;

ARCHITECTURE Behavior OF Q2 IS
	BEGIN
	PROCESS (clk, A, B) 
		VARIABLE temp: std_logic;
		VARIABLE jk: std_logic_vector (1 downto 0);
	BEGIN
		jk := B & A;
		IF clk='1' THEN                        
			CASE (jk) IS
				WHEN "11" => temp := not (temp);
				WHEN "10" => temp := '1';
				WHEN "01" => temp := '0';
				WHEN OTHERS => temp := temp; 
			END CASE;
		END IF; 
		Q2 <= temp;
	END PROCESS;

				
END Behavior ;