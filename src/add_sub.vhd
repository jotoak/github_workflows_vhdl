library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- For log2
use IEEE.math_real.all;
use IEEE.math_real."ceil";
use IEEE.math_real."log2";

-----------------------------------------------------------------------
-- add_sub
--
-- Calculates S1 = A + B - N and S2 = A + B - 2N
-- Output is always ready on the first clock cycle after it is sent in
-----------------------------------------------------------------------
entity add_sub is
    generic (
        NUM_OF_BITS : integer := 32
    );
    port (
        -- input data
        A            : in unsigned(NUM_OF_BITS - 1 downto 0);
        B            : in unsigned(NUM_OF_BITS - 1 downto 0);
        N            : in unsigned(NUM_OF_BITS - 1 downto 0);
        B_bit        : in std_logic;
        carry_in     : in std_logic;
        borrow_1_in  : in std_logic;
        borrow_2_in  : in std_logic;

        -- ouput data
        S0           : out unsigned(NUM_OF_BITS - 1 downto 0);
        S1           : out signed(NUM_OF_BITS - 1 downto 0);
        S2           : out signed(NUM_OF_BITS - 1 downto 0);
        carry_out    : out std_logic;
        borrow_1_out : out std_logic;
        borrow_2_out : out std_logic;

        -- utility
        en           : in std_logic;
        clk          : in std_logic;
        reset_n      : in std_logic
    );
end add_sub;
architecture rtl of add_sub is
    constant NUM_OF_BITS_INTERNAL : integer := NUM_OF_BITS + 1;

    signal adder_in_A             : unsigned(NUM_OF_BITS_INTERNAL - 1 downto 0);
    signal adder_in_B             : unsigned(NUM_OF_BITS_INTERNAL - 1 downto 0);
    signal adder_out              : unsigned(NUM_OF_BITS_INTERNAL - 1 downto 0);
    signal adder_out_C            : unsigned(NUM_OF_BITS_INTERNAL - 1 downto 0);
    signal adder_out_A            : unsigned(NUM_OF_BITS_INTERNAL - 1 downto 0);
    signal sub_1_in_A             : unsigned(NUM_OF_BITS_INTERNAL - 1 downto 0);
    signal sub_1_in_N             : unsigned(NUM_OF_BITS_INTERNAL - 1 downto 0);
    signal sub_1_out              : signed(NUM_OF_BITS_INTERNAL - 1 downto 0);
    signal sub_2_in_A             : unsigned(NUM_OF_BITS_INTERNAL - 1 downto 0);
    signal sub_2_in_N             : unsigned(NUM_OF_BITS_INTERNAL - 1 downto 0);
    signal sub_2_out              : signed(NUM_OF_BITS_INTERNAL - 1 downto 0);
begin
    adder_in_A  <= '0' & A;
    adder_in_B  <= '0' & B;
    adder_out_A <= adder_in_A + adder_in_B + ((NUM_OF_BITS - 1 downto 0 => '0') & carry_in);
    adder_out_C <= adder_in_B + ((NUM_OF_BITS - 1 downto 0              => '0') & carry_in);
    adder_out   <= adder_out_A when (B_bit = '1') else adder_out_C;

    sub_1_in_A  <= '0' & adder_out(NUM_OF_BITS - 1 downto 0);
    sub_1_in_N  <= '0' & N;
    sub_1_out   <= signed(sub_1_in_A) - signed(sub_1_in_N) - ((NUM_OF_BITS - 1 downto 0 => '0') & borrow_1_in);

    sub_2_in_A  <= '0' & adder_out(NUM_OF_BITS - 1 downto 0);
    sub_2_in_N  <= N & '0';
    sub_2_out   <= signed(sub_2_in_A) - signed(sub_2_in_N) - ((NUM_OF_BITS - 1 downto 0 => '0') & borrow_2_in);

    -- Output flipflops
    flipflops_p : process (clk)
    begin
        if rising_edge(clk) then
            if (reset_n = '0') then
                S0           <= (others => '0');
                S1           <= (others => '0');
                S2           <= (others => '0');
                carry_out    <= '0';
                borrow_1_out <= '0';
                borrow_2_out <= '0';
            else
                if en = '1' then
                    S0           <= adder_out(NUM_OF_BITS - 1 downto 0);
                    S1           <= sub_1_out(NUM_OF_BITS - 1 downto 0);
                    S2           <= sub_2_out(NUM_OF_BITS - 1 downto 0);
                    carry_out    <= adder_out(NUM_OF_BITS);
                    borrow_1_out <= sub_1_out(NUM_OF_BITS);
                    borrow_2_out <= sub_2_out(NUM_OF_BITS);
                end if;
            end if;
        end if;
    end process flipflops_p;
end rtl;
