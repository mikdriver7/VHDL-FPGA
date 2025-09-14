library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity registers_min_max is
    port (
        din     : in  std_logic_vector(3 downto 0);
        reset   : in  std_logic;
        clk     : in  std_logic;
        sel     : in  std_logic_vector(1 downto 0);
        max_out : out std_logic_vector(3 downto 0);
        min_out : out std_logic_vector(3 downto 0);
        reg_out : out std_logic_vector(3 downto 0)
    );
end registers_min_max;

architecture arch of registers_min_max is
    signal r0, r1, r2, r3: std_logic_vector(3 downto 0);
    signal max1, min1, max, min : std_logic_vector(3 downto 0);
    signal LDmax, LDmin : std_logic;
    
begin
    max_out <= max1;
    min_out <= min1;
    
    -- Shift register process
    process (clk, reset)
    begin
        if reset = '1' then
            r0 <= "1000";
            r1 <= "1000";
            r2 <= "1000";
            r3 <= "1000";
        elsif (clk'event and clk = '1') then
            r0 <= din;
            r1 <= r0;
            r2 <= r1;
            r3 <= r2;
        end if;
    end process;
    
    -- Max/Min detection process
    process(r0, r1, r2, r3)
    begin
        -- Maximum detection
        if (r0 > r1) and (r0 > r2) and (r0 > r3) then
            max <= r0;
        elsif (r1 > r0) and (r1 > r2) and (r1 > r3) then
            max <= r1;
        elsif (r2 > r0) and (r2 > r1) and (r2 > r3) then
            max <= r2;
        else
            max <= r3;
        end if;
        
        -- Minimum detection
        if (r0 < r1) and (r0 < r2) and (r0 < r3) then
            min <= r0;
        elsif (r1 < r0) and (r1 < r2) and (r1 < r3) then
            min <= r1;
        elsif (r2 < r0) and (r2 < r1) and (r2 < r3) then
            min <= r2;
        else
            min <= r3;
        end if;
    end process;
    
    -- Load condition process
    process(max, min, max1, min1)
    begin
        if (max > max1) then
            LDmax <= '1';
        elsif max < max1 then
            LDmax <= '0';
        else
            LDmax <= '1';
        end if;
        
        if (min < min1) then
            LDmin <= '1';
        elsif (min > min1) then
            LDmin <= '0';
        else
            LDmin <= '1';
        end if;
    end process;
    
    -- Output register process
    process (clk, reset)
    begin
        if (reset = '1') then
            max1 <= (others => '0');
            min1 <= (others => '1');
        elsif (clk'event and clk = '1') then
            max1 <= max;
            min1 <= min;
        end if;
    end process;
    
    -- Register output selection process
    process(sel, r0, r1, r2, r3)
    begin
        case sel is
            when "00" => reg_out <= r0;
            when "01" => reg_out <= r1;
            when "10" => reg_out <= r2;
            when others => reg_out <= r3;
        end case;
    end process;
    
end arch;
