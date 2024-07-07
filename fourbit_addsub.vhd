library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity fourbit_addsub is
port ( A0, A1, A2, A3, B0, B1, B2, B3, M : in std_logic ;
S0, S1, S2, S3, COUT : out std_logic );
end entity;

architecture a1 of fourbit_addsub is
component FA is
port (a, b, c : in std_logic;
s, cout : out std_logic);
end component;

component A_XOR is
port (in1, in2: in std_logic; out1 : out std_logic);
end component;

signal X0, X1, X2, X3, C0, C1, C2 : std_logic := '0';
begin
XOR1 : A_XOR port map ( in1 => B0, in2 => M, out1 => X0 );
FA1  : FA port map ( a => A0, b => X0, c => M, s => S0, cout => C0 );
XOR2 : A_XOR port map ( in1 => B1, in2 => M, out1 => X1 );
FA2  : FA port map ( a => A1, b => X1, c => C0, s => S1, cout => C1 );
XOR3 : A_XOR port map ( in1 => B2, in2 => M, out1 => X2 );
FA3  : FA port map ( a => A2, b => X2, c => C1, s => S2, cout => C2 );
XOR4 : A_XOR port map ( in1 => B3, in2 => M, out1 => X3 );
FA4  : FA port map ( a => A3, b => X3, c => C2, s => S3, cout => COUT );
end architecture;
