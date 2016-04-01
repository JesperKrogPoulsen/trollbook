library ieee;
use ieee.std_logic_1164.all;

entity llram is
	generic(
		data_width : integer;
		addr_width : integer
	);
	port(
		reset : in std_logic;
		clk : in std_logic;
		
		a : out std_logic_vector(addr_width - 1 downto 1);
		d : inout std_logic_vector(data_width - 1 downto 0);
		ce : out std_logic;
		we : out std_logic;
		lb : out std_logic;
		ub : out std_logic;
		oe : out std_logic;
		
		vga_a : in std_logic_vector(addr_width - 1 downto 1);
		vga_q : out std_logic_vector(data_width - 1 downto 0);
		vga_ce : in std_logic;
		
		cpu_a : in std_logic_vector(addr_width - 1 downto 1);
		cpu_d : in std_logic_vector(data_width - 1 downto 0);
		cpu_q : out std_logic_vector(data_width - 1 downto 0);
		cpu_rw : in std_logic;
		cpu_siz : in std_logic_vector(1 downto 0);
		cpu_ce : in std_logic;
		
		snd_a : in std_logic_vector(addr_width - 1 downto 1);
		snd_q : out std_logic_vector(data_width - 1 downto 0);
		snd_ce : in std_logic
	);
end llram;

architecture arch of llram is
begin
	oe <= '0';
	ce <= '0';
	
	we <= '1';
	ub <= '0';
	lb <= '0';
	
	
	
	process(clk) begin
		if falling_edge(clk) then
			--ce <= '1';
		end if;
	end process;
	
	process(vga_ce, snd_ce, cpu_ce) begin
		if vga_ce = '1' then
			a <= vga_a;
		elsif snd_ce = '1' then
			a <= snd_a;
		elsif cpu_ce = '1' then
			a <= cpu_a;
		else
			a <= (others => '1');
		end if;
	end process;
	
end arch;
