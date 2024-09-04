-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
-- Date        : Wed Sep  4 17:17:11 2024
-- Host        : toluntosun-Ubuntu running 64-bit Ubuntu 23.10
-- Command     : write_vhdl -force -mode synth_stub
--               /home/toluntosun/Desktop/PhD/fpga_acceleration/modmul_git/vivado/modmul_lib.gen/sources_1/ip/dsp_macro_karatsuba_34x43_0_s0ff/dsp_macro_karatsuba_34x43_0_s0ff_stub.vhdl
-- Design      : dsp_macro_karatsuba_34x43_0_s0ff
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xcu280-fsvh2892-2L-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity dsp_macro_karatsuba_34x43_0_s0ff is
  Port ( 
    CLK : in STD_LOGIC;
    PCIN : in STD_LOGIC_VECTOR ( 47 downto 0 );
    A : in STD_LOGIC_VECTOR ( 26 downto 0 );
    B : in STD_LOGIC_VECTOR ( 17 downto 0 );
    C : in STD_LOGIC_VECTOR ( 43 downto 0 );
    D : in STD_LOGIC_VECTOR ( 26 downto 0 );
    P : out STD_LOGIC_VECTOR ( 47 downto 0 )
  );

end dsp_macro_karatsuba_34x43_0_s0ff;

architecture stub of dsp_macro_karatsuba_34x43_0_s0ff is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "CLK,PCIN[47:0],A[26:0],B[17:0],C[43:0],D[26:0],P[47:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "dsp_macro_v1_0_3,Vivado 2023.1";
begin
end;
