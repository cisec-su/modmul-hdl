// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Wed Sep  4 17:17:11 2024
// Host        : toluntosun-Ubuntu running 64-bit Ubuntu 23.10
// Command     : write_verilog -force -mode funcsim
//               /home/toluntosun/Desktop/PhD/fpga_acceleration/modmul_git/vivado/modmul_lib.gen/sources_1/ip/dsp_macro_2_1/dsp_macro_2_sim_netlist.v
// Design      : dsp_macro_2
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu280-fsvh2892-2L-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dsp_macro_2,dsp_macro_v1_0_3,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dsp_macro_v1_0_3,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module dsp_macro_2
   (CLK,
    A,
    B,
    PCOUT,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:pcout_intf:carrycascout_intf:carryout_intf:bcout_intf:acout_intf:concat_intf:d_intf:c_intf:b_intf:a_intf:bcin_intf:acin_intf:pcin_intf:carryin_intf:carrycascin_intf:sel_intf, ASSOCIATED_RESET SCLR:SCLRD:SCLRA:SCLRB:SCLRCONCAT:SCLRC:SCLRM:SCLRP:SCLRSEL, ASSOCIATED_CLKEN CE:CED:CED1:CED2:CED3:CEA:CEA1:CEA2:CEA3:CEA4:CEB:CEB1:CEB2:CEB3:CEB4:CECONCAT:CECONCAT3:CECONCAT4:CECONCAT5:CEC:CEC1:CEC2:CEC3:CEC4:CEC5:CEM:CEP:CESEL:CESEL1:CESEL2:CESEL3:CESEL4:CESEL5, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [26:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [17:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 pcout_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME pcout_intf, LAYERED_METADATA undef" *) output [47:0]PCOUT;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [44:0]P;

  wire [26:0]A;
  wire [17:0]B;
  wire CLK;
  wire [44:0]P;
  wire [47:0]PCOUT;
  wire NLW_U0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_U0_CARRYOUT_UNCONNECTED;
  wire [29:0]NLW_U0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_U0_BCOUT_UNCONNECTED;

  (* C_A_WIDTH = "27" *) 
  (* C_B_WIDTH = "18" *) 
  (* C_CONCAT_WIDTH = "48" *) 
  (* C_CONSTANT_1 = "1" *) 
  (* C_C_WIDTH = "18" *) 
  (* C_D_WIDTH = "18" *) 
  (* C_HAS_A = "1" *) 
  (* C_HAS_ACIN = "0" *) 
  (* C_HAS_ACOUT = "0" *) 
  (* C_HAS_B = "1" *) 
  (* C_HAS_BCIN = "0" *) 
  (* C_HAS_BCOUT = "0" *) 
  (* C_HAS_C = "0" *) 
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
  (* C_HAS_PCIN = "0" *) 
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
  (* C_OPMODES = "000100100000010100000000" *) 
  (* C_P_LSB = "0" *) 
  (* C_P_MSB = "44" *) 
  (* C_REG_CONFIG = "00000000000000000000000000000100" *) 
  (* C_SEL_WIDTH = "0" *) 
  (* C_SQUARE_FCN = "0" *) 
  (* C_TEST_CORE = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "virtexuplusHBM" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  dsp_macro_2_dsp_macro_v1_0_3 U0
       (.A(A),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_U0_ACOUT_UNCONNECTED[29:0]),
        .B(B),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_U0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
BUkFQ88CK8F8RG4050u9IfEwVzJ4hvETKdGaJoHf6tXL+6OdZb6o8QLLnOJyLL7ssvP135DQ7U1Q
LRRNKwPwy/xYws8zTxTs1N9p8MdToBWnry62J4La7DQ4y4FXS7ExA6VqIHUTWjet48rFTsCSND1U
jV3uYJW3hqhzC9A5izMsti6tCrBHZQaxDXnejGlJRxO3ZzizJa9+OlWYZupv+C5rmS3P+yEY/mW5
AnDJxX/NmSjTYUoTRzkAAm3VaTXyEbrL1Ij2TCujUMWcpXt5mZ1/zMvdMbpUH+hHHDg4KgiS4lap
DastiF039W4HhNrE9ga9+KPvMWrIfsn+U8CbCQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
K79Yl39IavjZaFihSgjJHCktke2A/SWjzD3gz5WNSEzzBKL7PI9mhowBgwa0+W/tXWdNWydfir4L
AW0VCWkPMdka0J58KjZAFHATxr25BHrLmvELNJKLKQNI0lAnRnaLgPMUDatE9ZrYHnT6FX/jwIsR
S7n7Q47+9e1w4ZmehjScYghRQdv1ToETKxUXpFnMGqSUnEfVHAWxvcl4iOMFkcdq3YWhxw20j7QQ
3WWYP6VB2IWVPlphmy0DMlad2r8zMGbNeK0l6I1whRojby8z9SZ3Cj3L36ZaV/ix8BmV88MANweO
uPttwhZC0SZH0qHldli1BmKKgG+o5e2xmTmA3w==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 21584)
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
