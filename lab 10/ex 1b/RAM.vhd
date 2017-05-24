library ieee;
use ieee.std_logic_1164.all;

entity RAM is

	generic 
	(
		DATA_WIDTH : natural := 8;
		ADDR_WIDTH : natural := 6
	);

	port 
	(
		Clock		: in std_logic;
		Address	: in std_logic_vector(ADDR_WIDTH downto 0);
		Data		: in std_logic_vector((DATA_WIDTH-1) downto 0);
		WrEn		: in std_logic := '1';
		CS			: in std_logic := '0';
		Q			: out std_logic_vector((DATA_WIDTH -1) downto 0)
	);

end entity;

architecture rtl of RAM is

	-- Build a 2-D array type for the RAM
	subtype word_t is std_logic_vector((DATA_WIDTH-1) downto 0);
	type memory_t is array(2**ADDR_WIDTH-1 downto 0) of word_t;

	-- Declare the RAM signal.	
	signal ram : memory_t;

	-- Register to hold the address 
	signal addr_reg : natural range 0 to 2**ADDR_WIDTH-1;
	
	-- Address vector to integer
	signal Address_integer: natural range 0 to 2**ADDR_WIDTH - 1;
	
	-- Signal to hold output
	signal output : std_logic_vector((DATA_WIDTH -1) downto 0);

begin

	process(Clock)
	begin
	if(rising_edge(Clock)) then
		
		if (CS = '1') then
		
			Address_integer <= to_integer(unsigned(Address));
			
			if(WrEn = '1') then
				ram(Address_integer) <= Data;
			end if;

			-- Register the address for reading
			addr_reg <= Address_integer;
			output <= ram(Address_integer);
			
		else
			output <= (others => 'Z');
			
		end if;
		
	end if;
	end process;

	Q <= output;

end rtl;
