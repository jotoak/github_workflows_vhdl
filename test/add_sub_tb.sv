`timescale 1ns / 1ps
//`include "C:/Users/jonas/Git/RSA_systemverilog/RSA_systemverilog.srcs/sources_1/new/add_sub.sv"
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/22/2022 03:20:06 PM
// Design Name: 
// Module Name: add_sub_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
parameter NUM_OF_BITS = 32;
class Packet;
//Input for the add sub module
    bit reset_n = 1;
    rand bit[NUM_OF_BITS-1:0] A;
    rand bit[NUM_OF_BITS-1:0] B;
    rand bit[NUM_OF_BITS-1:0] N;
    rand bit carry_in;
    rand bit borrow_1_in;
    rand bit borrow_2_in;
    bit enable = 1;
    rand bit B_bit;
    
   //Output form add_sub 
    bit [NUM_OF_BITS-1:0] S0;
    bit [NUM_OF_BITS-1:0] S1;
    bit [NUM_OF_BITS-1:0] S2;
    bit carry_out;
    bit borrow_1_out;
    bit borrow_2_out;
function void print(string tag="");
$display ("T=%0t %s A=0x%0h B=0x%0h N=0x%0h B_bit=0b%0h", $time,tag, A, B, N, B_bit);
endfunction

function void copy(Packet tmp);
this.A = tmp.A;
this.B = tmp.B;
this.N = tmp.N;
this.carry_in = tmp.carry_in;
this.borrow_1_in = tmp.borrow_1_in;
this.borrow_2_in = tmp.borrow_2_in;
this.enable = tmp.enable;
this.B_bit = tmp.B_bit;
this.reset_n = tmp.reset_n;

this.S0 = tmp.S0;
this.S0 = tmp.S1;
this.S0 = tmp.S2;
this.carry_out = tmp.carry_out;
this.borrow_1_out = tmp.borrow_1_out;
this.borrow_2_out = tmp.borrow_2_out;

endfunction

endclass

class driver;
virtual add_sub_conect add_sub_if;
event drv_done;
mailbox drv_mbx;

task run();
$display ("T=%0t [Driver] starting ...",$time);

forever begin
    Packet item;
    
    
    $display ("T=%0t [Driver] wating for item ...",$time);
    
    drv_mbx.get(item);
    @ (posedge add_sub_if.clk);
    item.print("Driver");
    add_sub_if.A <= item.A;
    add_sub_if.B <= item.B;
    add_sub_if.N <= item.N;
    add_sub_if.carry_in <= item.carry_in;
    add_sub_if.borrow_1_in <= item.borrow_1_in;
    add_sub_if.borrow_2_in <= item.borrow_2_in;
    add_sub_if.B_bit <= item.B_bit;
    add_sub_if.enable <= item.enable;
    add_sub_if.reset_n <= item.reset_n; ->drv_done;
  end
  endtask
endclass


class monitor;
    virtual add_sub_conect add_sub_if;
    mailbox scb_mbx;
    
    task run();
        $display ("T=%0t [Monitor starting ...", $time);
        
        forever begin
            Packet m_pkt =new();
            @(posedge add_sub_if.clk);
            #1;
            m_pkt.A = add_sub_if.A;
            m_pkt.B = add_sub_if.B;
            m_pkt.N = add_sub_if.N;
            m_pkt.carry_in = add_sub_if.carry_in;
            m_pkt.borrow_1_in = add_sub_if.borrow_1_in;
            m_pkt.borrow_2_in = add_sub_if.borrow_2_in;
            m_pkt.B_bit = add_sub_if.B_bit;
            m_pkt.enable = add_sub_if.enable;
            m_pkt.reset_n = add_sub_if.reset_n;
            @(posedge add_sub_if.clk);
            #1;
            m_pkt.S0 = add_sub_if.S0;
            m_pkt.S1 = add_sub_if.S1;
            m_pkt.S2 = add_sub_if.S2;
            m_pkt.carry_out = add_sub_if.carry_out;
            m_pkt.borrow_1_out = add_sub_if.borrow_1_out;
            m_pkt.borrow_2_out = add_sub_if.borrow_2_out;
            
            scb_mbx.put(m_pkt);
            
            
        end 
     endtask
  endclass
  
  
class scoreboard;
    mailbox scb_mbx;
    
    task run();
    forever begin
    Packet item, ref_item;
    scb_mbx.get(item);
    item.print("Scoreboard");
    
    ref_item=new();
    ref_item.copy(item);
    
    if(ref_item.enable == 1 && ref_item.B_bit == 1 && ref_item.reset_n == 1)begin
        {ref_item.carry_out, ref_item.S0} = ref_item.A + ref_item.B + ref_item.carry_in;
        {ref_item.borrow_1_out, ref_item.S1} = signed'(ref_item.A) + signed'(ref_item.B) + ref_item.carry_in - signed'(ref_item.N) - ref_item.borrow_1_in;
        {ref_item.borrow_2_out, ref_item.S2} = signed'(ref_item.A) + signed'(ref_item.B) + ref_item.carry_in - signed'(ref_item.N << 1) - ref_item.borrow_2_in;
    end else if(ref_item.enable == 0 || ref_item.reset_n == 0) begin
        {ref_item.carry_out, ref_item.S0} = 0;
        {ref_item.borrow_1_out, ref_item.S1} = 0;
        {ref_item.borrow_2_out, ref_item.S2} = 0;
    end else if(ref_item.enable == 1 && ref_item.B_bit == 0 && ref_item.reset_n == 1)begin
        {ref_item.carry_out, ref_item.S0} = ref_item.B + ref_item.carry_in;
        {ref_item.borrow_1_out, ref_item.S1} = signed'(ref_item.B + ref_item.carry_in) - signed'(ref_item.N) - ref_item.borrow_1_in;  
        {ref_item.borrow_2_out, ref_item.S2} = signed'(ref_item.B + ref_item.carry_in) - signed'(ref_item.N << 1) - ref_item.borrow_2_in;
    end
    if (ref_item.S0 != item.S0) begin
        $display ("[%0t] Scoreboard Error! S0 mismatch ref_item=0x%0h item=0x%0h", $time, ref_item.S0,item.S0);
        end else begin
        $display ("[%0t] Scoreboard Pass! S0 match ref_item=0x%0h item=0x%0h", $time, ref_item.S0,item.S0);
        end
        if (ref_item.S1 != item.S1) begin
        $display ("[%0t] Scoreboard Error! S1 mismatch ref_item=0x%0h item=0x%0h", $time, ref_item.S1,item.S1);
        end else begin
        $display ("[%0t] Scoreboard Pass! S1 match ref_item=0x%0h item=0x%0h", $time, ref_item.S1,item.S1);
        end
        if (ref_item.S2 != item.S2) begin
        $display ("[%0t] Scoreboard Error! S2 mismatch ref_item=0x%0h item=0x%0h", $time, ref_item.S2,item.S2);
        end else begin
        $display ("[%0t] Scoreboard Pass! S2 match ref_item=0x%0h item=0x%0h", $time, ref_item.S2,item.S2);
        end
        if (ref_item.carry_out != item.carry_out) begin
        $display ("[%0t] Scoreboard Error! Carry_out mismatch ref_item=0b%0h item=0b%0h", $time, ref_item.carry_out,item.carry_out);
        end else begin
        $display ("[%0t] Scoreboard Pass! Carry_out match ref_item=0b%0h item=0b%0h", $time, ref_item.carry_out,item.carry_out);
        end
        if (ref_item.borrow_1_out != item.borrow_1_out) begin
        $display ("[%0t] Scoreboard Error! borrow_1_out mismatch ref_item=0b%0h item=0b%0h", $time, ref_item.borrow_1_out,item.borrow_1_out);
        end else begin
        $display ("[%0t] Scoreboard Pass! borrow_1_out match ref_item=0b%0h item=0b%0h", $time, ref_item.borrow_1_out,item.borrow_1_out);
        end
        if (ref_item.borrow_2_out != item.borrow_2_out) begin
        $display ("[%0t] Scoreboard Error! borrow_2_out mismatch ref_item=0b%0h item=0b%0h", $time, ref_item.borrow_2_out,item.borrow_2_out);
        end else begin
        $display ("[%0t] Scoreboard Pass! borrow_2_out match ref_item=0b%0h item=0b%0h", $time, ref_item.borrow_2_out,item.borrow_2_out);
        end
    end    
   endtask
endclass

class generator;
    int loop=10;
    event drv_done;
    mailbox drv_mbx;
    
    task run();
        for( int i = 0; i < loop; i++) begin
            Packet item = new;
            item.randomize();
            $display ("T=%0t [Generator] Loop:%0d/%0d create next item", $time, i+1, loop);
            drv_mbx.put(item);
            $display ("T=%0t [Generator] Wait for driver to be done", $time);
            @(drv_done);
         end
        endtask
endclass

class env;
    generator g0;
    driver d0;
    monitor m0;
    scoreboard s0;
    mailbox scb_mbx;
    virtual add_sub_conect add_sub_if;
    
    event drv_done;
    mailbox drv_mbx;
    
    function new();
        d0 = new;
        m0 = new;
        s0 = new;
        scb_mbx =new();
        g0 = new;
        drv_mbx = new;
     endfunction
     
     virtual task run();
        d0.add_sub_if = add_sub_if;
        m0.add_sub_if = add_sub_if;
        
        d0.drv_mbx = drv_mbx;
        g0.drv_mbx = drv_mbx;
        
        m0.scb_mbx = scb_mbx;
        s0.scb_mbx = scb_mbx;
        
        d0.drv_done = drv_done;
        g0.drv_done = drv_done;
        
        fork
            s0.run();
            d0.run();
            m0.run();
            g0.run();
        join_any
       endtask
            
endclass

class test;
    env e0;
    mailbox drv_mbx;
    
    function new();
        drv_mbx = new();
        e0 = new();
    endfunction
    
    virtual task run();
        e0.d0.drv_mbx = drv_mbx;
        e0.run();
     endtask
   endclass
   

module add_sub_tb ();

bit clk;
initial clk <= 0;
always #10 clk = ~clk;
add_sub_conect add_sub_if (clk);
add_sub u0 (add_sub_if.DUT);

initial begin
    test t0;
    
    t0 = new;
    t0.e0.add_sub_if = add_sub_if;
    t0.run();
    
    #50 $finish;
    end
endmodule