library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use std.env.finish;
use std.standard.severity_level;

entity add_sub_tb is
    generic (
        NUM_OF_BITS : integer := 16
    );
end add_sub_tb;
architecture rtl of add_sub_tb is
    signal A            : unsigned(NUM_OF_BITS - 1 downto 0);
    signal B            : unsigned(NUM_OF_BITS - 1 downto 0);
    signal N            : unsigned(NUM_OF_BITS - 1 downto 0);
    signal B_bit        : std_logic;
    signal carry_in     : std_logic;
    signal borrow_1_in  : std_logic;
    signal borrow_2_in  : std_logic;
    signal S0           : unsigned(NUM_OF_BITS - 1 downto 0);
    signal S1           : signed(NUM_OF_BITS - 1 downto 0);
    signal S2           : signed(NUM_OF_BITS - 1 downto 0);
    signal carry_out    : std_logic;
    signal borrow_1_out : std_logic;
    signal borrow_2_out : std_logic;
    signal en           : std_logic := '0';
    signal clk          : std_logic := '0';
    signal reset_n      : std_logic := '1';
begin
    dut : entity work.add_sub
        generic map(
            NUM_OF_BITS => NUM_OF_BITS
        )
        port map(
            A            => A,
            B            => B,
            N            => N,
            B_bit        => B_bit,
            carry_in     => carry_in,
            borrow_1_in  => borrow_1_in,
            borrow_2_in  => borrow_2_in,
            S0           => S0,
            S1           => S1,
            S2           => S2,
            carry_out    => carry_out,
            borrow_1_out => borrow_1_out,
            borrow_2_out => borrow_2_out,
            en           => en,
            clk          => clk,
            reset_n      => reset_n
        );

    main_p : process
        variable S0_exp           : unsigned(NUM_OF_BITS - 1 downto 0);
        variable S1_exp           : signed(NUM_OF_BITS - 1 downto 0);
        variable S2_exp           : signed(NUM_OF_BITS - 1 downto 0);
        variable carry_out_exp    : std_logic;
        variable borrow_1_out_exp : std_logic;
        variable borrow_2_out_exp : std_logic;

        procedure testcase(
            constant A_val           : natural;
            constant B_val           : natural;
            constant N_val           : natural;
            constant B_bit_val       : natural;
            constant carry_in_val    : natural;
            constant borrow_1_in_val : natural;
            constant borrow_2_in_val : natural
        ) is
        begin
            if (B_bit_val = 1) then
                S0_exp           := to_unsigned(A_val + B_val + carry_in_val, NUM_OF_BITS);
                S1_exp           := to_signed(A_val + B_val + carry_in_val - N_val - borrow_1_in_val, NUM_OF_BITS);
                S2_exp           := to_signed(A_val + B_val + carry_in_val - (2 * N_val) - borrow_2_in_val, NUM_OF_BITS);
                carry_out_exp    := to_unsigned(A_val + B_val + carry_in_val, NUM_OF_BITS + 1)(NUM_OF_BITS);
                borrow_1_out_exp := to_signed(to_integer(to_unsigned(A_val + B_val + carry_in_val, NUM_OF_BITS)) - N_val - borrow_1_in_val, NUM_OF_BITS + 1)(NUM_OF_BITS);
                borrow_2_out_exp := to_signed(to_integer(to_unsigned(A_val + B_val + carry_in_val, NUM_OF_BITS)) - (2 * N_val) - borrow_2_in_val, NUM_OF_BITS + 1)(NUM_OF_BITS);
            else
                S0_exp           := to_unsigned(B_val + carry_in_val, NUM_OF_BITS);
                S1_exp           := to_signed(B_val + carry_in_val - N_val - borrow_1_in_val, NUM_OF_BITS);
                S2_exp           := to_signed(B_val + carry_in_val - (2 * N_val) - borrow_2_in_val, NUM_OF_BITS);
                carry_out_exp    := to_unsigned(B_val + carry_in_val, NUM_OF_BITS + 1)(NUM_OF_BITS);
                borrow_1_out_exp := to_signed(to_integer(to_unsigned(B_val + carry_in_val, NUM_OF_BITS)) - N_val - borrow_1_in_val, NUM_OF_BITS + 1)(NUM_OF_BITS);
                borrow_2_out_exp := to_signed(to_integer(to_unsigned(B_val + carry_in_val, NUM_OF_BITS)) - (2 * N_val) - borrow_2_in_val, NUM_OF_BITS + 1)(NUM_OF_BITS);
            end if;
            reset_n <= '0';
            wait until rising_edge(clk);
            reset_n     <= '1';

            A           <= to_unsigned(A_val, NUM_OF_BITS);
            B           <= to_unsigned(B_val, NUM_OF_BITS);
            N           <= to_unsigned(N_val, NUM_OF_BITS);
            B_bit       <= std_logic(to_unsigned(B_bit_val, 1)(0));
            carry_in    <= to_unsigned(carry_in_val, 1)(0);
            borrow_1_in <= to_signed(borrow_1_in_val, 1)(0);
            borrow_2_in <= to_signed(borrow_2_in_val, 1)(0);
            en          <= '1';

            wait until rising_edge(clk);
            en <= '0';

            wait until rising_edge(clk);
            S0_a           : assert(S0 = S0_exp) report "S0 ASSERTION FAILED" severity error;
            S1_a           : assert(S1 = S1_exp) report "S1 ASSERTION FAILED" severity error;
            S2_a           : assert(S2 = S2_exp) report "S2 ASSERTION FAILED" severity error;
            carry_out_a    : assert(carry_out = carry_out_exp) report "carry_out ASSERTION FAILED" severity error;
            borrow_1_out_a : assert(borrow_1_out = borrow_1_out_exp) report "borrow_1_out ASSERTION FAILED, for input A=" & integer'image(A_val) & ", B=" & integer'image(B_val) & ", N=" & integer'image(N_val) & ", carr_in=" & integer'image(carry_in_val) severity error;
            borrow_2_out_a : assert(borrow_2_out = borrow_2_out_exp) report "borrow_2_out ASSERTION FAILED" severity error;
        end procedure testcase;
    begin
        wait until rising_edge(clk);
        reset_n <= '0';
        wait until rising_edge(clk);
        reset_n <= '1';

        testcase(64, 1, 0, 1, 0, 0, 0);
        wait until rising_edge(clk);
        wait until rising_edge(clk);
        testcase(64, 0, 1, 1, 0, 0, 0);
        wait until rising_edge(clk);
        wait until rising_edge(clk);
        testcase(64, 1, 0, 1, 1, 0, 0);
        wait until rising_edge(clk);
        wait until rising_edge(clk);
        testcase(2 ** NUM_OF_BITS - 1, 1, 1, 0, 0, 0, 0);
        wait until rising_edge(clk);
        wait until rising_edge(clk);
        testcase(2 ** (NUM_OF_BITS - 1), 2 ** (NUM_OF_BITS - 1), 2, 1, 0, 0, 0);
        wait until rising_edge(clk);
        wait until rising_edge(clk);
        testcase(2 ** (NUM_OF_BITS - 1), 2 ** (NUM_OF_BITS - 1) - 1, 2, 1, 1, 0, 0);
        wait until rising_edge(clk);
        wait until rising_edge(clk);
        testcase(2 ** (NUM_OF_BITS - 1), 2 ** (NUM_OF_BITS - 1) - 1, 2, 1, 0, 0, 0);
        wait until rising_edge(clk);
        wait until rising_edge(clk);
        testcase(2 ** (NUM_OF_BITS - 1), 0, 2 ** (NUM_OF_BITS - 2), 0, 1, 0, 0);
        wait until rising_edge(clk);
        wait until rising_edge(clk);
        testcase(2 ** (NUM_OF_BITS - 1), 0, 2 ** (NUM_OF_BITS - 2), 0, 1, 1, 0);
        wait until rising_edge(clk);
        wait until rising_edge(clk);
        testcase(2 ** (NUM_OF_BITS - 1), 0, 2 ** (NUM_OF_BITS - 2), 0, 1, 0, 1);
        wait until rising_edge(clk);
        wait until rising_edge(clk);
        testcase(2 ** (NUM_OF_BITS - 1), 0, 2 ** (NUM_OF_BITS - 2), 0, 0, 1, 1);
        wait until rising_edge(clk);
        wait until rising_edge(clk);
        testcase(2 ** (NUM_OF_BITS - 1), 0, 2 ** (NUM_OF_BITS - 2), 1, 0, 0, 1);
        wait until rising_edge(clk);
        wait until rising_edge(clk);
        testcase(2 ** (NUM_OF_BITS - 1), 0, 2 ** (NUM_OF_BITS - 2) + 1, 1, 0, 0, 1);
        wait until rising_edge(clk);
        wait until rising_edge(clk);

        finish;
    end process main_p;

    clk <= not clk after 0.5 ns;
end rtl;
