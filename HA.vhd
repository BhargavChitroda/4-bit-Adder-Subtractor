library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

package J is
 component HA is
	port (in1,in2:in std_logic;
	 out1,out2 : out std_logic);
	end component;
end package;

library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity HA is
    port (in1,in2:in std_logic;
	 out1,out2 : out std_logic);
	 
end  entity;


architecture struct of HA is
     signal sig1,sig2,sig3:std_logic;
begin
	  inst1: NAND_2 port map(A=>in1,B=>in2,Y=>sig1);
	  inst2: NAND_2 port map(A=>in1,B=>sig1,Y=>sig2);
	  inst3: NAND_2 port map(A=>sig1,B=>in2,Y=>sig3);
	  inst4: NAND_2 port map(A=>sig2,B=>sig3,Y=>out1);
	  inst5: NAND_2 port map(A=>sig1,B=>sig1,Y=>out2);
 end architecture;