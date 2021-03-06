library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.wor_logic.all;

entity timer is
	generic(
		peripheral_id : integer range 0 to 15;
		
		timers : integer
	);
	port(
		reset : in std_logic;
		clk : in std_logic;
		
		chipset_a : in std_logic_vector(7 downto 0);
		bus_d : in std_logic_vector(31 downto 0);
		bus_q : out std_logic_vector(31 downto 0);
		bus_rw : in std_logic;
		bus_siz : in std_logic_vector(1 downto 0);
		chipset_ce : in std_logic_vector(15 downto 0);
		chipset_ack : out wor_logic_vector(15 downto 0);
		chipset_nack : out wor_logic_vector(15 downto 0);
		chipset_int : out std_logic_vector(15 downto 0)
	);
end timer;

architecture arch of timer is
	type counter_type is array(natural range <>) of unsigned(15 downto 0);
	type control_type is array(natural range <>) of std_logic_vector(1 downto 0);
	
	signal counter : counter_type(timers - 1 downto 0);
	signal counter_next : counter_type(timers - 1 downto 0);
	signal compare : counter_type(timers - 1 downto 0);
	signal control : control_type(timers - 1 downto 0);
	signal control_next : control_type(timers - 1 downto 0);
	
	signal prescale : unsigned(15 downto 0);
	signal prescale_count : unsigned(15 downto 0);
	signal prescale_next : unsigned(15 downto 0);
	
	signal interrupt_enable : std_logic_vector(timers - 1 downto 0);
	signal interrupt_flag : std_logic_vector(timers - 1 downto 0);
	signal interrupt_flag_next : std_logic_vector(timers - 1 downto 0);
	
	signal interrupt : std_logic;
begin
	timer_next_logic: process(counter, compare, control, interrupt_flag) begin
		prescale_next <= prescale_count - to_unsigned(1, 16);
		
		if prescale_count = to_unsigned(0, 16) then
			prescale_next <= prescale;
		end if;
		
		for i in 0 to timers - 1 loop
			counter_next(i) <= counter(i);
			interrupt_flag_next(i) <= interrupt_flag(i);
			control_next(i) <= control(i);
			
			if(control(i)(0) = '1') and prescale_count = to_unsigned(0, 16) then
				counter_next(i) <= counter(i) + to_unsigned(1, 16);
			end if;
			
			if counter(i) = compare(i) and prescale_count =  to_unsigned(0, 16) then
				counter_next(i) <= to_unsigned(0, 16);
				interrupt_flag_next(i) <= '1';
				
				if(control(i)(1) = '0') then -- Single shot
					control_next(i)(0) <= '0';
				end if;
			end if;
		end loop;
	end process;
	
	bus_logic: process(reset, clk) is
		variable check : std_logic_vector(1 downto 0);
	begin
		if reset = '1' then
			prescale <= to_unsigned(16, 16);
			
			for i in 0 to timers - 1 loop
				interrupt_flag(i) <= '0';
				interrupt_enable(i) <= '0';
				
				counter(i) <= to_unsigned(0, 16);
				compare(i) <= to_unsigned(0, 16);
				control(i) <= (others => '0');
			end loop;
			
		elsif falling_edge(clk) then
			check := chipset_ce(peripheral_id) & bus_rw;
			
			prescale_count <= prescale_next;
			
			for i in 0 to timers - 1 loop
				counter(i) <= counter_next(i);
				interrupt_flag(i) <= interrupt_flag_next(i);
			end loop;
			
			case check is
				when "11" =>
					case chipset_a(6 downto 2) is
						when "00000" => -- Control
							interrupt_enable <= bus_d(timers - 1 downto 0);
							prescale <= unsigned(bus_d(31 downto 16));
						when "00001" => -- Status
							for i in 0 to timers - 1 loop
								if bus_d(i) = '1' then
									interrupt_flag(i) <= '0';
								end if;
							end loop;
							
						when "00100" => -- Timer 0 Control
							control(0) <= bus_d(1 downto 0);
						when "00101" => -- Timer 0 Counter
							counter(0) <= unsigned(bus_d(15 downto 0));
						when "00110" => -- Timer 0 Compare
							compare(0) <= unsigned(bus_d(15 downto 0));
							
						 when "01000" => -- Timer 1 Control
							 control(1) <= bus_d(1 downto 0);
						 when "01001" => -- Timer 1 Counter
							 counter(1) <= unsigned(bus_d(15 downto 0));
						 when "01010" => -- Timer 1 Compare
							 compare(1) <= unsigned(bus_d(15 downto 0));
							
						 when "01100" => -- Timer 2 Control
							 control(2) <= bus_d(1 downto 0);
						 when "01101" => -- Timer 2 Counter
							 counter(2) <= unsigned(bus_d(15 downto 0));
						 when "01110" => -- Timer 2 Compare
							 compare(2) <= unsigned(bus_d(15 downto 0));
							
						 when "10000" => -- Timer 2 Control
							 control(3) <= bus_d(1 downto 0);
						 when "10001" => -- Timer 2 Counter
							 counter(3) <= unsigned(bus_d(15 downto 0));
						 when "10010" => -- Timer 2 Compare
							 compare(3) <= unsigned(bus_d(15 downto 0));
						
						when others =>
						
					end case;
					
				when others =>
			end case;
			
		end if;
	end process;
	
	 process(reset, clk) begin
		 if reset = '1' then
			interrupt <= '0';
		 elsif falling_edge(clk) then
			interrupt <= '0';
			for i in 0 to timers - 1 loop
				if interrupt_flag(i) = '1' and interrupt_enable(i) = '1' then
					interrupt <= '1';
				end if;
			end loop;
		 end if;
	 end process;
	
	process(reset, clk) begin
		if reset = '1' then
			bus_q <= (others => 'Z');
		elsif falling_edge(clk) then
			if chipset_ce(peripheral_id) = '1' then
				case chipset_a(6 downto 2) is
					when "00000" => -- Control
						bus_q(31 downto 16) <= std_logic_vector(prescale);
						bus_q(15 downto timers) <= (others => '0');
						bus_q(timers - 1 downto 0) <= interrupt_enable;
					when "00001" => -- Status
						bus_q(31 downto timers) <= (others => '0');
						bus_q(timers - 1 downto 0) <= interrupt_flag;
						
					when "00100" => -- Timer 0 Control
						bus_q <= x"0000000" & "00" & control(0);
					when "00101" => -- Timer 0 Counter
						bus_q <= x"0000" & std_logic_vector(counter(0));
					when "00110" => -- Timer 0 Compare
						bus_q <= x"0000" & std_logic_vector(compare(0));
					
					 when "01000" => -- Timer 1 Control
						 bus_q <= x"0000000" & "00" & control(1);
					 when "01001" => -- Timer 1 Counter
						 bus_q <= x"0000" & std_logic_vector(counter(1));
					 when "01010" => -- Timer 1 Compare
						 bus_q <= x"0000" & std_logic_vector(compare(1));
					
					 when "01100" => -- Timer 2 Control
						 bus_q <= x"0000000" & "00" & control(2);
					 when "01101" => -- Timer 2 Counter
						 bus_q <= x"0000" & std_logic_vector(counter(2));
					 when "01110" => -- Timer 2 Compare
						 bus_q <= x"0000" & std_logic_vector(compare(2));
					
					 when "10000" => -- Timer 3 Control
						 bus_q <= x"0000000" & "00" & control(3);
					 when "10001" => -- Timer 3 Counter
						 bus_q <= x"0000" & std_logic_vector(counter(3));
					 when "10010" => -- Timer 3 Compare
						 bus_q <= x"0000" & std_logic_vector(compare(3));
					
					when others =>
						bus_q <= (others => 'Z');
				end case;
			else
				bus_q <= (others => 'Z');
			end if;
		end if;
	end process;
	
	chipset_int <= (peripheral_id => interrupt, others => 'Z');
	chipset_ack <= (peripheral_id => '1', others => '0');
	chipset_nack <= (peripheral_id => '0', others => '0');
end arch;
