library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

library work;
use work.j.all;

entity FA is
    port (a,b,c:in std_logic;
	 s,cout : out std_logic);
	 
end  entity;


architecture struct of FA is
     signal sig1,sig2,sig3,sig4,sig5:std_logic;
begin
	  inst1: HA port map(in1=>a,in2=>b,out1=>sig1,out2=>sig2);
	  inst2: HA port map(in1=>c,in2=>sig1,out1=>s,out2=>sig3);
	  inst3: NAND_2 port map(A=>sig3,B=>sig3,Y=>sig4);
	  inst4: NAND_2 port map(A=>sig2,B=>sig2,Y=>sig5);
	  inst5: NAND_2 port map(A=>sig4,B=>sig5,Y=>cout);
	  
 end architecture;