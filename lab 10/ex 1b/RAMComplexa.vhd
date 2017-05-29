library ieee;
use ieee.std_logic_1164.all;
library work;
use work.all;

entity RAMComplexa is

	generic 
	(
		DATA_WIDTH : natural := 32;
		ADDR_WIDTH : natural := 9
	);

	port 
	(
		Clock		: in std_logic;
		Address	: in std_logic_vector(ADDR_WIDTH downto 0);
		DataIn	: in std_logic_vector((DATA_WIDTH-1) downto 0);
		DataOut	: out std_logic_vector((DATA_WIDTH-1) downto 0);
		WrEn		: in std_logic := '1'
	);

end entity;

architecture rtl of RAMComplexa is
	
	signal WrEnChip: std_logic_vector(1 downto 0);
	signal CS: std_logic_vector(1 downto 0);
		
	signal DataOutChips: std_logic_vector((DATA_WIDTH-1) downto 0);
	
	signal AddressDecod: std_logic_vector(1 downto 0);

begin

	gen1: for i in 0 to 3 generate
		
		chips1: RAM port map
				(Clock, Address(ADDR_WIDTH-3 downto 0), DataIn((DATA_WIDTH/4-1)*(i+1) downto (DATA_WIDTH/4-1)*i), WrEnChip(0), CS(0), DataOutChips((DATA_WIDTH/4-1)*(i+1) downto (DATA_WIDTH/4-1)*i));
				
	end generate;
	
	gen2: for i in 0 to 3 generate
		
		chips2: RAM port map
				(Clock, Address(ADDR_WIDTH-3 downto 0), DataIn((DATA_WIDTH/4-1)*(i+1) downto (DATA_WIDTH/4-1)*i), WrEnChip(1), CS(1), DataOutChips((DATA_WIDTH/4-1)*(i+1) downto (DATA_WIDTH/4-1)*i));
				
	end generate;
	
	AddressDecod <= Address(ADDR_WIDTH)&Address(ADDR_WIDTH-1);
	
	process(Clock)
	begin
	if(rising_edge(Clock)) then
	
	
		if ( AddressDecod = "00" ) then
			-- Decod
			case Address(ADDR_WIDTH-2) is
				when '0' =>
					WrEnChip <= "01";
					CS <= "01";
				
				when '1' =>
					WrEnChip <= "10";
					CS <= "10";	
		
			end case;
		
			-- end Decod
			
		else
			DataOutChips <= (others => 'Z');
		end if;
	end if;
	
	end process;
		DataOut <= DataOutChips;
end rtl;
