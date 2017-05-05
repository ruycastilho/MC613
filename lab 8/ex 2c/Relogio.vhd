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
	SIGNAL load_enable_temp: STD_LOGIC_VECTOR(5 DOWNTO 0);
	SIGNAL cont_enable: STD_LOGIC_VECTOR(5 DOWNTO 0) := "000001";
	
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
				(cont_enable(0), "0000", load_enable(0), clock_1Hz, unidade_seg_out);
	
	dezena_seg: ContadorMod10
				PORT MAP
				(cont_enable(1), "0000", load_enable(1), clock_1Hz, dezena_seg_out);
	
	unidade_min: ContadorMod10
				PORT MAP
				(cont_enable(2), load_value, load_enable(2), clock_1Hz, unidade_min_out);
	
	dezena_min: ContadorMod10
				PORT MAP
				(cont_enable(3), load_value, load_enable(3), clock_1Hz, dezena_min_out);
	
	unidade_hora: ContadorMod10
				PORT MAP
				(cont_enable(4), load_value, load_enable(4), clock_1Hz, unidade_hora_out);
	
	dezena_hora: ContadorMod10
				PORT MAP
				(cont_enable(5), load_value, load_enable(5), clock_1Hz, dezena_hora_out);
	
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
	
			IF ( clock_1Hz'EVENT AND clock_1Hz = '1' ) THEN
									
				-- Normal mode
				IF (mode = '0') THEN
				
					cont_enable(0) <= '1';
					loop1: FOR i IN 1 TO 5 LOOP
							cont_enable(i) <= '0';
					END LOOP;

					load_enable <= (OTHERS => '0');

					IF (dezena_hora_out = "0010" ) THEN
					
						-- Unidade hora
						IF ( unidade_hora_out = "0011" ) THEN
							-- dar set em 3 pra 0 e de 2 pra 0
						
						ELSE
							cont_enable(5) <= '0';	
						
						END IF;
						
					
					ELSE
					
						-- Unidade hora
						IF ( unidade_hora_out = "1000" ) THEN
							cont_enable(5) <= '1';
						
						ELSE
							cont_enable(5) <= '0';	
						
						END IF;
					
					END IF;

					-- Dezena min
					IF ( dezena_min_out = "0101" ) THEN
						cont_enable(4) <= '1';
					
					
					ELSE
						cont_enable(4) <= '0';	
					
					END IF;

					-- Unidade min
					IF ( unidade_min_out = "1000" ) THEN
						cont_enable(3) <= '1';
					
					
					ELSE
						cont_enable(3) <= '0';	
					
					END IF;

					-- Dezena seg	
					IF ( dezena_seg_out = "0101" ) THEN
						cont_enable(2) <= '1';
					
					
					ELSE
						cont_enable(2) <= '0';	
					
					END IF;

					-- Unidade seg
					IF ( unidade_seg_out = "1000" ) THEN
						cont_enable(1) <= '1';
					
					
					ELSE
						cont_enable(1) <= '0';	
					
					END IF;
					
					-- Display HH:MM
					IF (display_mode = '1') THEN
						display0_out <= unidade_min_out;
						display1_out <= dezena_min_out;
						display2_out <= unidade_hora_out;
						display3_out <= dezena_hora_out;
					
					-- Display MM:SS
					ELSE
						display0_out <= unidade_seg_out;
						display1_out <= dezena_seg_out;
						display2_out <= unidade_min_out;
						display3_out <= dezena_min_out;
						
					END IF;

				-- Set mode
				ELSE
					cont_enable(0) <= '0';
					
							
					case_load: CASE (load_digit) IS
						WHEN "00" => load_enable_temp <= "000111";
						WHEN "01" => load_enable_temp <= "001011";
						WHEN "10" => load_enable_temp <= "010011";
						WHEN "11" => load_enable_temp <= "100011";
		
					END CASE;
					
					IF (load_activation = '1') THEN
						load_enable <= load_enable_temp;
					
					END IF;
				
				
				END IF;
			
			END IF;
	
		END PROCESS;
		
END Behavior;