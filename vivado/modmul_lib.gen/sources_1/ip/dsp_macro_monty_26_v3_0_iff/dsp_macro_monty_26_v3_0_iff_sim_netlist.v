// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Tue Aug 27 17:38:35 2024
// Host        : toluntosun-Ubuntu running 64-bit Ubuntu 23.10
// Command     : write_verilog -force -mode funcsim -rename_top dsp_macro_monty_26_v3_0_iff -prefix
//               dsp_macro_monty_26_v3_0_iff_ dsp_macro_monty_26_v3_0_iff_sim_netlist.v
// Design      : dsp_macro_monty_26_v3_0_iff
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu280-fsvh2892-2L-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dsp_macro_monty_26_v3_0_iff,dsp_macro_v1_0_3,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dsp_macro_v1_0_3,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module dsp_macro_monty_26_v3_0_iff
   (CLK,
    CARRYIN,
    A,
    B,
    C,
    PCOUT,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:pcout_intf:carrycascout_intf:carryout_intf:bcout_intf:acout_intf:concat_intf:d_intf:c_intf:b_intf:a_intf:bcin_intf:acin_intf:pcin_intf:carryin_intf:carrycascin_intf:sel_intf, ASSOCIATED_RESET SCLR:SCLRD:SCLRA:SCLRB:SCLRCONCAT:SCLRC:SCLRM:SCLRP:SCLRSEL, ASSOCIATED_CLKEN CE:CED:CED1:CED2:CED3:CEA:CEA1:CEA2:CEA3:CEA4:CEB:CEB1:CEB2:CEB3:CEB4:CECONCAT:CECONCAT3:CECONCAT4:CECONCAT5:CEC:CEC1:CEC2:CEC3:CEC4:CEC5:CEM:CEP:CESEL:CESEL1:CESEL2:CESEL3:CESEL4:CESEL5, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 carryin_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME carryin_intf, LAYERED_METADATA undef" *) input CARRYIN;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [26:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [17:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 c_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME c_intf, LAYERED_METADATA undef" *) input [47:0]C;
  (* x_interface_info = "xilinx.com:signal:data:1.0 pcout_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME pcout_intf, LAYERED_METADATA undef" *) output [47:0]PCOUT;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [47:0]P;

  wire [26:0]A;
  wire [17:0]B;
  wire [47:0]C;
  wire CARRYIN;
  wire CLK;
  wire [47:0]P;
  wire [47:0]PCOUT;
  wire NLW_U0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_U0_CARRYOUT_UNCONNECTED;
  wire [29:0]NLW_U0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_U0_BCOUT_UNCONNECTED;

  (* C_A_WIDTH = "27" *) 
  (* C_B_WIDTH = "18" *) 
  (* C_CONCAT_WIDTH = "48" *) 
  (* C_CONSTANT_1 = "1" *) 
  (* C_C_WIDTH = "48" *) 
  (* C_D_WIDTH = "18" *) 
  (* C_HAS_A = "1" *) 
  (* C_HAS_ACIN = "0" *) 
  (* C_HAS_ACOUT = "0" *) 
  (* C_HAS_B = "1" *) 
  (* C_HAS_BCIN = "0" *) 
  (* C_HAS_BCOUT = "0" *) 
  (* C_HAS_C = "1" *) 
  (* C_HAS_CARRYCASCIN = "0" *) 
  (* C_HAS_CARRYCASCOUT = "0" *) 
  (* C_HAS_CARRYIN = "1" *) 
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
  (* C_OPMODES = "000010011000010100000000" *) 
  (* C_P_LSB = "0" *) 
  (* C_P_MSB = "47" *) 
  (* C_REG_CONFIG = "00000000000011000001000011000100" *) 
  (* C_SEL_WIDTH = "0" *) 
  (* C_SQUARE_FCN = "0" *) 
  (* C_TEST_CORE = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "virtexuplusHBM" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  dsp_macro_monty_26_v3_0_iff_dsp_macro_v1_0_3 U0
       (.A(A),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_U0_ACOUT_UNCONNECTED[29:0]),
        .B(B),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_U0_BCOUT_UNCONNECTED[17:0]),
        .C(C),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_U0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(CARRYIN),
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
ULWo3AJL7bg2b86X/ARqeT/HQsgmGDsiaWymNbglJuserQtIySSqPflCjHmxsISW9JjrOtLr7lGp
exO5NgXXsD3kEjRaqjkCCSIKVH9NHB/qIGIuqEfLGOMUpax/esUKy7yn13gTZAW1oKWFEQWl4Ps7
97cPxd9cF+kczYs6MDObiThbbFIXgOEdmdbFyTIywNWVGJ8HnhgWNgJ6/dp8ENO3uXJZnPYeih68
8EBVyZNk/kWs4vaNQq1bO5QnkbAJmZqQWaA/lB7AoMl74NX/PdxrqS5tzy21vsMRWDee/slV0HM+
CYDnCrzFEJkR/o7/l5P2zHH68Y/Qnk+ZHVOEIQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
cK3cWpC+GFVtkQh0nQYplmHGBGSiJ6uLh/GgZX6RF9Fo5l3H/dFjnbPIYmrQv4u3x0unu9vPXyDy
cxqNyG5XWo3QZHsl7kX5XpyXxcnEYy0P4wL9boPs3w9xWpttl16DwQgh+DH8aKg1TP2Q79oDWuYG
pHqecAXQopq9J8ArP1VesTqC0UAmUt2Kl5njCxga8pRBBJfuf8mb3Euv0Gq0+h4Wx7r2Cr5Dc8sR
ZkwUOSvwEnmjc+b5/FG/RhNzBFZEUJpU18u7V1IQk7ng8xB7oXc9oNNnLIzb4YwRNV2KEP59shEn
YFnGk5ENranIoSKBBjScfGOTiH23XvmbK92O5Q==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 21328)
`pragma protect data_block
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
flx7NcfE7B3nfA==
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
