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
    signal magnitude : std_logic_vector(2 downto 0); -- Signal to hold the magnitude
    signal sign_bit : std_logic; -- Signal to hold the sign bit
begin
    process(sign_mag)
    begin
        sign_bit <= sign_mag(3);
        magnitude <= sign_mag(2 downto 0);

        if (sign_bit = '0') then
            twos_comp <= sign_mag;
        else
            twos_comp <= ('1' & (not magnitude)) + 1;
        end if;
    end process;
end behavioral;
