library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

entity converter is
    port(
        sign_mag : in std_logic_vector(3 downto 0);
        twos_comp : out std_logic_vector(3 downto 0)
    );
end converter;

architecture behavioral of converter is
begin
    process(sign_mag)
        variable magnitude : std_logic_vector(2 downto 0);
        variable sign_bit : std_logic;
        variable temp : std_logic_vector(3 downto 0);
    begin
        -- Extract the sign and magnitude
        sign_bit := sign_mag(3);
        magnitude := sign_mag(2 downto 0);

        if ((sign_bit = '0') or (sign_bit = '1' and magnitude = "000")) then
            -- the output is the same as the input
            twos_comp <= sign_mag; -- Simply pass the input as out
        else
            -- negate the magnitude bits of the input;
            -- add "001" to the negated magnitude bits to obtain
            -- the low order bits of the output
            -- set the high order bit of the output to the high order bit of the input
            temp := ('1' & (not magnitude)) + 1;
            twos_comp <= temp;
        end if;
    end process;
end behavioral;
