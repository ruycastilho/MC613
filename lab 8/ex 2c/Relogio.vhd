LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
LIBRARY work ;
USE work.all ;

-- ENTITY
ENTITY Relogio IS	
PORT( 	SW  : 		IN   	STD_LOGIC_VECTOR(9 DOWNTO 0);
			KEY : 		IN		STD_LOGIC_VECTOR(3 DOWNTO 0);
			LEDR : 		OUT 	STD_LOGIC_VECTOR(9 DOWNTO 0);
			LEDG : 		OUT 	STD_LOGIC_VECTOR(7 DOWNTO 0);
			HEX0 : 		OUT 	STD_LOGIC_VECTOR(6 DOWNTO 0);
			HEX1 : 		OUT 	STD_LOGIC_VECTOR(6 DOWNTO 0);
			HEX2 : 		OUT 	STD_LOGIC_VECTOR(6 DOWNTO 0);
			HEX3 : 		OUT 	STD_LOGIC_VECTOR(6 DOWNTO 0);
			CLOCK_50 : 	IN	 	STD_LOGIC);
			
END Relogio ;

ARCHITECTURE Behavior OF Relogio IS

	-- Inputs
	SIGNAL load_digit: STD_LOGIC_VECTOR(1 DOWNTO 0);
	SIGNAL display_mode: STD_LOGIC;
	SIGNAL load_activation: STD_LOGIC;
	SIGNAL mode: STD_LOGIC;
	
	-- Counter parameters
	SIGNAL load_value: STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL load_enable: STD_LOGIC_VECTOR(5 DOWNTO 0);
	SIGNAL cont_enable: STD_LOGIC_VECTOR(4 DOWNTO 0);
	
	-- Clock
	SIGNAL clock_1Hz: STD_LOGIC;
	
	-- Counters
	SIGNAL unidade_seg_out: STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL dezena_seg_out: STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL unidade_min_out: STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL dezena_min_out: STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL unidade_hora_out: STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL dezena_hora_out: STD_LOGIC_VECTOR(3 DOWNTO 0);	

	-- Output display
	SIGNAL display0_out: STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL display1_out: STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL display2_out: STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL display3_out: STD_LOGIC_VECTOR(3 DOWNTO 0);
	
BEGIN


	divisor_clk: Divisor50Clk
				PORT MAP
				(CLOCK_50, clock_1Hz);
	
	unidade_seg: ContadorMod10
				PORT MAP
				('1', load_value, load_enable(0), clock_1Hz, unidade_seg_out);
	
	dezena_seg: ContadorMod10
				PORT MAP
				(cont_enable(0), load_value, load_enable(1), clock_1Hz, dezena_seg_out);
	
	unidade_min: ContadorMod10
				PORT MAP
				(cont_enable(1), load_value, load_enable(2), clock_1Hz, unidade_min_out);
	
	dezena_min: ContadorMod10
				PORT MAP
				(cont_enable(2), load_value, load_enable(3), clock_1Hz, dezena_min_out);
	
	unidade_hora: ContadorMod10
				PORT MAP
				(cont_enable(3), load_value, load_enable(4), clock_1Hz, unidade_hora_out);
	
	dezena_hora: ContadorMod10
				PORT MAP
				(cont_enable(4), load_value, load_enable(5), clock_1Hz, dezena_hora_out);
	
	display_0: display_7seg
				PORT MAP
				(display0_out, HEX0(6 DOWNTO 0));

	display_1: display_7seg
				PORT MAP
				(display1_out, HEX1(6 DOWNTO 0));

	display_2: display_7seg
				PORT MAP
				(display2_out, HEX2(6 DOWNTO 0));

	display_3: display_7seg
				PORT MAP
				(display3_out, HEX3(6 DOWNTO 0));

				
	-- Receiving input parameters/config.

		load_value 			<= SW(3 DOWNTO 0);
		load_digit 			<= SW(6 DOWNTO 5);
		display_mode 		<= SW(8);
		load_activation	<= KEY(0);
		mode 					<= SW(9);
		
		
	-- Logic
	
		PROCESS (clock_1Hz)
			BEGIN
		
			-- Normal mode
			IF (mode = '0') THEN
		
				IF ( unidade_seg_out = "1001" ) THEN
					
				
				
				END IF;
		
		
		
			-- Set mode
			--ELSE
			
			END IF;
			
		END PROCESS;
		
END Behavior;