library ieee;
use ieee.std_logic_1164.all;

entity sum_of_minterms is
    port(a, b, c : in std_logic;
         output : out std_logic);
end sum_of_minterms;

architecture structural of sum_of_minterms is

    component and3_gate
        port ( in_1, in_2, in_3 : in std_logic;
               output : out std_logic);
    end component;

    component or3_gate
        port ( in_1, in_2, in_3 : in std_logic;
               output : out std_logic);
    end component;

    -- declare internal signals used to "hook up" components
    signal nota, notb : std_logic;
    signal s1, s2, s3: std_logic;

    -- declare configuration specification
    for U1, U2, U3 : and3_gate use entity work.and3_gate(example);
    for U4: or3_gate use entity work.or3_gate(example);

begin
    -- component instantiation
    nota <= not a;
    notb <= not b;

    U1: and3_gate port map(in_1 => nota, in_2 => notb, in_3 => c, output => s1);
    U2: and3_gate port map(in_1 => nota, in_2 => b, in_3 => c, output => s2);
    U3: and3_gate port map(in_1 => a, in_2 => b, in_3 => c, output => s3);
    U4: or3_gate port map(in_1 => s1, in_2 => s2, in_3 => s3, output => output);

end structural;
