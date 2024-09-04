-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
-- Date        : Wed Sep  4 14:39:41 2024
-- Host        : toluntosun-Ubuntu running 64-bit Ubuntu 23.10
-- Command     : write_vhdl -force -mode synth_stub -rename_top word_red_c26_1 -prefix
--               word_red_c26_1_ word_red_c26_1_asyncl0_stub.vhdl
-- Design      : word_red_c26_1_asyncl0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xcu280-fsvh2892-2L-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity word_red_c26_1 is
  Port ( 
    CLK : in STD_LOGIC;
    PCIN : in STD_LOGIC_VECTOR ( 47 downto 0 );
    ACIN : in STD_LOGIC_VECTOR ( 29 downto 0 );
    B : in STD_LOGIC_VECTOR ( 17 downto 0 );
    C : in STD_LOGIC_VECTOR ( 47 downto 0 );
    ACOUT : out STD_LOGIC_VECTOR ( 29 downto 0 );
    PCOUT : out STD_LOGIC_VECTOR ( 47 downto 0 );
    P : out STD_LOGIC_VECTOR ( 47 downto 0 )
  );

end word_red_c26_1;

architecture stub of word_red_c26_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "CLK,PCIN[47:0],ACIN[29:0],B[17:0],C[47:0],ACOUT[29:0],PCOUT[47:0],P[47:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "dsp_macro_v1_0_3,Vivado 2023.1";
begin
end;
