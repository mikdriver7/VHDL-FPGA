library IEEE;
use IEEE.std_logic_1164.all;

entity and3_gate is
    port( in_1, in_2, in_3: in std_logic;
          output : out std_logic);
end and3_gate;

architecture example of and3_gate is
begin
    output <= in_1 and in_2 and in_3;
end example;
