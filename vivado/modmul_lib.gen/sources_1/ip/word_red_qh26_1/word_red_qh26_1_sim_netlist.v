// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Wed Sep  4 17:19:25 2024
// Host        : toluntosun-Ubuntu running 64-bit Ubuntu 23.10
// Command     : write_verilog -force -mode funcsim
//               /home/toluntosun/Desktop/PhD/fpga_acceleration/modmul_git/vivado/modmul_lib.gen/sources_1/ip/word_red_qh26_1/word_red_qh26_1_sim_netlist.v
// Design      : word_red_qh26_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu280-fsvh2892-2L-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "word_red_qh26_1,dsp_macro_v1_0_3,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dsp_macro_v1_0_3,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module word_red_qh26_1
   (CLK,
    PCIN,
    ACIN,
    B,
    C,
    ACOUT,
    PCOUT,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:pcout_intf:carrycascout_intf:carryout_intf:bcout_intf:acout_intf:concat_intf:d_intf:c_intf:b_intf:a_intf:bcin_intf:acin_intf:pcin_intf:carryin_intf:carrycascin_intf:sel_intf, ASSOCIATED_RESET SCLR:SCLRD:SCLRA:SCLRB:SCLRCONCAT:SCLRC:SCLRM:SCLRP:SCLRSEL, ASSOCIATED_CLKEN CE:CED:CED1:CED2:CED3:CEA:CEA1:CEA2:CEA3:CEA4:CEB:CEB1:CEB2:CEB3:CEB4:CECONCAT:CECONCAT3:CECONCAT4:CECONCAT5:CEC:CEC1:CEC2:CEC3:CEC4:CEC5:CEM:CEP:CESEL:CESEL1:CESEL2:CESEL3:CESEL4:CESEL5, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 pcin_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME pcin_intf, LAYERED_METADATA undef" *) input [47:0]PCIN;
  (* x_interface_info = "xilinx.com:signal:data:1.0 acin_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME acin_intf, LAYERED_METADATA undef" *) input [29:0]ACIN;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [17:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 c_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME c_intf, LAYERED_METADATA undef" *) input [47:0]C;
  (* x_interface_info = "xilinx.com:signal:data:1.0 acout_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME acout_intf, LAYERED_METADATA undef" *) output [29:0]ACOUT;
  (* x_interface_info = "xilinx.com:signal:data:1.0 pcout_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME pcout_intf, LAYERED_METADATA undef" *) output [47:0]PCOUT;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [47:0]P;

  wire [29:0]ACIN;
  wire [29:0]ACOUT;
  wire [17:0]B;
  wire [47:0]C;
  wire CLK;
  wire [47:0]P;
  wire [47:0]PCIN;
  wire [47:0]PCOUT;
  wire NLW_U0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_U0_CARRYOUT_UNCONNECTED;
  wire [17:0]NLW_U0_BCOUT_UNCONNECTED;

  (* C_A_WIDTH = "27" *) 
  (* C_B_WIDTH = "18" *) 
  (* C_CONCAT_WIDTH = "48" *) 
  (* C_CONSTANT_1 = "1" *) 
  (* C_C_WIDTH = "48" *) 
  (* C_D_WIDTH = "18" *) 
  (* C_HAS_A = "0" *) 
  (* C_HAS_ACIN = "1" *) 
  (* C_HAS_ACOUT = "1" *) 
  (* C_HAS_B = "1" *) 
  (* C_HAS_BCIN = "0" *) 
  (* C_HAS_BCOUT = "0" *) 
  (* C_HAS_C = "1" *) 
  (* C_HAS_CARRYCASCIN = "0" *) 
  (* C_HAS_CARRYCASCOUT = "0" *) 
  (* C_HAS_CARRYIN = "0" *) 
  (* C_HAS_CARRYOUT = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_CEA = "0" *) 
  (* C_HAS_CEB = "0" *) 
  (* C_HAS_CEC = "0" *) 
  (* C_HAS_CECONCAT = "0" *) 
  (* C_HAS_CED = "0" *) 
  (* C_HAS_CEM = "0" *) 
  (* C_HAS_CEP = "0" *) 
  (* C_HAS_CESEL = "0" *) 
  (* C_HAS_CONCAT = "0" *) 
  (* C_HAS_D = "0" *) 
  (* C_HAS_INDEP_CE = "0" *) 
  (* C_HAS_INDEP_SCLR = "0" *) 
  (* C_HAS_PCIN = "1" *) 
  (* C_HAS_PCOUT = "1" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SCLRA = "0" *) 
  (* C_HAS_SCLRB = "0" *) 
  (* C_HAS_SCLRC = "0" *) 
  (* C_HAS_SCLRCONCAT = "0" *) 
  (* C_HAS_SCLRD = "0" *) 
  (* C_HAS_SCLRM = "0" *) 
  (* C_HAS_SCLRP = "0" *) 
  (* C_HAS_SCLRSEL = "0" *) 
  (* C_LATENCY = "128" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_OPMODES = "000000011101010100000000" *) 
  (* C_P_LSB = "0" *) 
  (* C_P_MSB = "47" *) 
  (* C_REG_CONFIG = "00000000100001100011100011000100" *) 
  (* C_SEL_WIDTH = "0" *) 
  (* C_SQUARE_FCN = "0" *) 
  (* C_TEST_CORE = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "virtexuplusHBM" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  word_red_qh26_1_dsp_macro_v1_0_3 U0
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACIN(ACIN),
        .ACOUT(ACOUT),
        .B(B),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_U0_BCOUT_UNCONNECTED[17:0]),
        .C(C),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_U0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYOUT(NLW_U0_CARRYOUT_UNCONNECTED),
        .CE(1'b1),
        .CEA(1'b1),
        .CEA1(1'b1),
        .CEA2(1'b1),
        .CEA3(1'b1),
        .CEA4(1'b1),
        .CEB(1'b1),
        .CEB1(1'b1),
        .CEB2(1'b1),
        .CEB3(1'b1),
        .CEB4(1'b1),
        .CEC(1'b1),
        .CEC1(1'b1),
        .CEC2(1'b1),
        .CEC3(1'b1),
        .CEC4(1'b1),
        .CEC5(1'b1),
        .CECONCAT(1'b1),
        .CECONCAT3(1'b1),
        .CECONCAT4(1'b1),
        .CECONCAT5(1'b1),
        .CED(1'b1),
        .CED1(1'b1),
        .CED2(1'b1),
        .CED3(1'b1),
        .CEM(1'b1),
        .CEP(1'b1),
        .CESEL(1'b1),
        .CESEL1(1'b1),
        .CESEL2(1'b1),
        .CESEL3(1'b1),
        .CESEL4(1'b1),
        .CESEL5(1'b1),
        .CLK(CLK),
        .CONCAT({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .P(P),
        .PCIN(PCIN),
        .PCOUT(PCOUT),
        .SCLR(1'b0),
        .SCLRA(1'b0),
        .SCLRB(1'b0),
        .SCLRC(1'b0),
        .SCLRCONCAT(1'b0),
        .SCLRD(1'b0),
        .SCLRM(1'b0),
        .SCLRP(1'b0),
        .SCLRSEL(1'b0),
        .SEL(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2023.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
eXu8CP/59WSryM+0TrJm4ivvR8jHZUvAhTM/3bTefAJXrKDHPLzKye7Mt1lRDbXJAjZ6BIKO4kwC
E0lcvSrV/Q3dyfvAxtUp+z/aW8VJRK9qFHdYmlvgE+RPpMa3xR2aZy6U8Oi3M/l6Zx+25t9AX8je
jkkih0AxnCIBN1VIUqs=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
vgEvPTqFnqLdQAsx6AXakuctSKMkEG2yHSn4TsDpQk1BrjbzuBtnELewLyu5ZXRBjC8xFsQPW3cH
Ijezov8BDFEzYCheSybl50hwqRI4T0U4N2aoukd55sy9/NN/+A/8Xjl2+g59+0dy6ah8l8JC/qit
l31TRSDYlJTLd1mQWx3tzFmN+bObNeP3maLIbD4XAjkgQ7yM5fP17d00xtU7feiIsq+x7OCl8dNg
Lb6/MRQ7tcASiCzijiw1uXAToCUdMxgwgJod3u1zhviPycgXmq35FZKuwpZjHbl0RDdbj+VG8Bpj
4BU8mxfWb+gvLPK6UlY/G7koaN6b8jABhJx6dA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
AaFM62USO7nm3XNUl+p18THQcjom9piiWV6niKyzDrgB89YGfBopTWrrBST1q+vznrsm1xYeBw0/
aUlMx3aaTJAO5tmM1PHkJSpudvwlb+QPsKCQ1U+sK88kH8wB1yOXWndOr9j1qQOaW7Dl8gr3SftQ
YtUGanmwYxL2tWG2WK8=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
C0y/vEvU9lV6QG7X1OT8SLSXZuemaWEBdXhrUF9kdwmgdFOawTMiM1GmMDMBgOcJHmcZZR/vHgjX
aW6LgUFWwSJBwd8FgrX2GbEx7xC61Ri0fwxzDG1Tns+5KdLl1XOtx/PL/I9GeE1CXetRMzM+s3HS
VC1otl8i826A3YXs41mtZyFqeu6JcfSKsoWmWhVOohan5pR/xouMVA20kBiN3Kl342JzkDM9tofJ
2U1WQM7I0GeX38EB7rx7N9fUUTsAxbMNkY9cSn5jJdADowfYwHWzjyG57462H4HjgFh3vbI4LtAe
iviGzIl6rjHhqn+uDqLNuNsC+sXc5SpfXzaatg==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
uBCuIthdOfPzzjz/96GbH63rV6HYJnDrLoe2d7Fu1o3WmbYzd75N6ms8Slm+1ppOkleA/O0EIH9E
QWOljNznnEOpJKNmhXFdvz2kcOCdLA/poOcJXyHw9X9dQS+ds2WUpieCP+bbnrQb3dLDH0qoSWMT
eqT/l+07htuRx2NqmQCnQME7OixqYKIuoYm9qnSnyhn6Cx7fTEYRu+oJvkU+/GVZNd73WLsoCf2y
wX3gEXrilulAXUTqCh319fuOfO1JbckH8V1VQwoiTFvFbtgEDQ29w8Vsrlzbo6S4AtwKCMAZHhfD
jQa/oimM1Xz5RgmjOOAj+3upyFgp1v2sx/6dnw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2022_10", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
tt7uUpU++Y1HyXw3H9uOZfR0faSHPJDBUNXzHd0A0mMBQSxHBUQO87ix4I9WYmXI78wSRjF0IGHr
xFa3M9/7SVLvNUBeb0SU1jS231rDwgD2G2uwW8g5/9kqE6FLAHLzrl9r3XHmWFv4+FyylrGJ62as
DP0dCDKjxnw5u1IB5Jms6xkS8WgqGubTQ4tnTj8HIqDjyxiBiVHHjftyFeDq/sV4G+yf3GTex00U
eB5JtuT/qI142GJyVmMhLVH0H7FZQDexSTBHYOyRfNRU/4rja0DQ1G1J1hifhyeiB0KxnWMlTibd
LdoZIikRhz8x8iEr4vjsMkdkpAnpQ3PAMy64QA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
AB07luaM6UqGzgUh8UuGEePdazMDdWluSYXVevTEENMZocIMfT6+7peiLi2lFLpT1PZHY0SV1bEB
3MGbnC8HTccfBEybpEbQcthgHlVowXAYniz/2Txe8qyOgo32iW3oqkNBI8+3F9ZSPlDg+JFVzIVA
qX6p9OE5OdkLviZr3HhrGHnr09iaLa0pojKY4jFq+7VRqBz023vKkoYVs0PjJfI6INZ1/WQImSWb
jFYp9N/v0u9E/ihSNdJ7cHFaC7K6PApgCrr3WdKb4sDwuHAEo2YBL+RafV+/bjhXcb36+8fi+Ihp
bOs+vnNa/kMivBt4zh4pkIiWe+NoICqV2/ie5g==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
VBFfqhMRFT4vkmBP645Vb+B3Zb1lr1J3v1UU437hv44KR/OBhVQry6ZFwQmnE4IL8RDeLg0D2tkZ
+Gq6ejrRmUJtMhB7DcRs1bi5keF43hsgq5wg0KTBhh3yUyQJp2rwUcd3hZ940AXSavn+1xjGlJLz
UeHKKlF6m3CSmvReobaVea9RaUO0WwDXmnf/lbeCObhOgaYEBceQjk/5E4hT/c0y8RPW7tDdF2yo
u8/2q5ioXWJ1FseteaZwdHICpZUYihFMiyZHYshN2G9zQtp4k87huvEBbFWggT9c6s3Lee8qIdsH
BXt0uVwINMMM1li7PiKl8l1URiX178BSIcGzdM0ZwSyAyO6i/qWiFsr7cCD1jcwDxUH+rVizdYBx
wfhtDxWf01qjpq13uUUqxxB+xMf58l+wpjFCLmKMgpNYs0S33SG6R8fvJ3IPvJHhVRc/hPupWbcK
hezSkYXnupL+GdSPxPoQZJW7/k8leEwuDKBO/VCfQpPXQR+FxLDNFBDe

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ao2uzJ9cDoOFb4Q+cT2/6EJRN9VWvURi+To0IoDU4YLe3Dr0WyVOAUCUIhb3Y8swY+CKwa+eJzzm
AriAJZAp9p8NujF4gOv+y4wy+eanf3pnOWbMWxsr6TT2S39coNdQ+NAO4aBUP3ZbESI4AbXpCTKA
+KV2gtFESo654X+tD0UNAabhx5OJpkBawo8534pIFBCYn70xDogKM4jXqTVCDr0CleLmgeIOYdIO
5T48N/bB3mluyuxS/Ea1/kS2r1g49hjIWlYnMkQ27NaUI1xAJTAjkrvMTHEKoSIskGvfO6jSWVlF
19HXSOkKJMQeQ0I6TBJ0H1KwHX8XwIuipvGDhg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
cB8eH02CucMzjTxJAiMdmFkBFdLmSo79R7zF0PDr/l7q0qazQ/1GdubmnqqGf5pYPJkzJeBo6kRt
aSwTHRGo6mlcOtI2pj+p4xedVTVeYbjQuy7pq0Rc6StCaM/sQLZB1x9mnb6QVjmVWGVGOhfNjuEQ
TvqE6kmRsf9/cqpB7QOujrNtwE2wrBnfS0V6OPdrNs8vAVBRsY3bJUU5vVN4z+bQyMtENHLh7+mH
qv5pF4CM9+/w51giWAhTFT8AhoWvjSjnaWFCmU0UvQL5Xbi2r8o2G+/ryb/KJszy/jzM5ntPG9l3
TupSL85lt7z8xHMPIchebHzKoAm/RxsQKA5fvw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
WW+SS65UnvlE7DU/4WYezqJEZrqGFUehHDfEGT6Ivt4vtkRPfFzx7tXNv86PGCfBtjAnNlGPy+W+
lsfWQgCbJ2ugY3YKY1K3oX0qmGO9jDncXaxCTMKGidjF0DsLvO66vYrB6Dz7xx6F8eYWVG6lzYBG
qAQZjqxJTyr6bVXGAqURMziE3q1v0l3WthMU70FQX9ra/RJ8DtB0E8pdVZx4lrjj31vRqbHt1nK1
PjZ82oI+QwyOygj6J8J3HTgv4Qo/E9KyR8ctW4HZULjINowuhDfHpUbHTpibKkaQWCmBHXhgv1M+
hlTZTXQPO3c0t2gONW6OudhkjUHYRCr9RXI8EA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 47856)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
