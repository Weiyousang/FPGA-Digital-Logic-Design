  --The IEEE standard 1164 package, declares std_logic, rising_edge(), etc.
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

--
--*********************************************************
-- CH03 : practise BIT operators
--                    designed by Pei-Chong Tang, Jan. 1999
--*********************************************************
--
entity CH03 is
     port
     (    XB : out STD_LOGIC_VECTOR (7 downto 0);
          XC : in  STD_LOGIC_VECTOR (3 downto 0);
  XA : out STD_LOGIC_VECTOR (3 downto 0)
     );
end CH03;

architecture CH03_ARCH of CH03 is
begin
--
--*********************************************************
-- 3-to-8 address decoding
--
     XB <= "10000000" when XC="1000" else
          "01000000" when XC="1001" else
          "00100000" when XC="1010" else
          "00010000" when XC="1011" else
          "00001000" when XC="1100" else
          "00000100" when XC="1101" else
          "00000010" when XC="1110" else
          "00000001" when XC="1111" else
          "00000000";
--
--*********************************************************
-- end of architechture
--
end CH03_ARCH;
