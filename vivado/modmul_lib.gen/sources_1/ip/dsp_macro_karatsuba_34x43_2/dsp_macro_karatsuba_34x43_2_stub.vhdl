-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
-- Date        : Wed Aug  7 12:23:09 2024
-- Host        : toluntosun-Ubuntu running 64-bit Ubuntu 23.10
-- Command     : write_vhdl -force -mode synth_stub -rename_top dsp_macro_karatsuba_34x43_2 -prefix
--               dsp_macro_karatsuba_34x43_2_ dsp_macro_karatsuba_34x43_2_stub.vhdl
-- Design      : dsp_macro_karatsuba_34x43_2
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xcu280-fsvh2892-2L-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity dsp_macro_karatsuba_34x43_2 is
  Port ( 
    CLK : in STD_LOGIC;
    A : in STD_LOGIC_VECTOR ( 17 downto 0 );
    B : in STD_LOGIC_VECTOR ( 17 downto 0 );
    P : out STD_LOGIC_VECTOR ( 35 downto 0 )
  );

end dsp_macro_karatsuba_34x43_2;

architecture stub of dsp_macro_karatsuba_34x43_2 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "CLK,A[17:0],B[17:0],P[35:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "dsp_macro_v1_0_3,Vivado 2023.1";
begin
end;