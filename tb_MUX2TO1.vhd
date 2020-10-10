-- Testbench automatically generated online
-- at https://vhdl.lapinoo.net
-- Generation date : 10.10.2020 18:22:51 UTC

library ieee;
use ieee.std_logic_1164.all;

entity tb_MUX2TO1 is
end tb_MUX2TO1;

architecture tb of tb_MUX2TO1 is

    component MUX2TO1
        port (in1     : in std_logic_vector (15 downto 0);
              in2     : in std_logic_vector (15 downto 0);
              s       : in std_logic;
              mux_out : out std_logic_vector (15 downto 0));
    end component;

    signal in1     : std_logic_vector (15 downto 0);
    signal in2     : std_logic_vector (15 downto 0);
    signal s       : std_logic;
    signal mux_out : std_logic_vector (15 downto 0);

    constant TbPeriod : time := 1000 ns; -- EDIT Put right period here
    signal TbClock : std_logic := '0';
    signal TbSimEnded : std_logic := '0';

begin

    dut : MUX2TO1
    port map (in1     => in1,
              in2     => in2,
              s       => s,
              mux_out => mux_out);

    -- Clock generation
    TbClock <= not TbClock after TbPeriod/2 when TbSimEnded /= '1' else '0';

    --  EDIT: Replace YOURCLOCKSIGNAL below by the name of your clock as I haven't guessed it
    --  YOURCLOCKSIGNAL <= TbClock;

    stimuli : process
    begin
        -- EDIT Adapt initialization as needed
        in1 <= (others => '0');
        in2 <= (others => '0');
        s <= '0';

        -- Reset generation
        --  EDIT: Replace YOURRESETSIGNAL below by the name of your reset as I haven't guessed it
        YOURRESETSIGNAL <= '1';
        wait for 100 ns;
        YOURRESETSIGNAL <= '0';
        wait for 100 ns;

        -- EDIT Add stimuli here
        wait for 100 * TbPeriod;

        -- Stop the clock and hence terminate the simulation
        TbSimEnded <= '1';
        wait;
    end process;

end tb;

-- Configuration block below is required by some simulators. Usually no need to edit.

configuration cfg_tb_MUX2TO1 of tb_MUX2TO1 is
    for tb
    end for;
end cfg_tb_MUX2TO1;