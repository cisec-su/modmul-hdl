// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Mon Aug 26 23:21:46 2024
// Host        : toluntosun-Ubuntu running 64-bit Ubuntu 23.10
// Command     : write_verilog -force -mode funcsim
//               /home/toluntosun/Desktop/PhD/fpga_acceleration/karatsuba_dsp/karatsuba_dsp.gen/sources_1/ip/dsp_macro_monty_26_0_iff/dsp_macro_monty_26_0_iff_sim_netlist.v
// Design      : dsp_macro_monty_26_0_iff
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu280-fsvh2892-2L-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dsp_macro_monty_26_0_iff,dsp_macro_v1_0_3,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dsp_macro_v1_0_3,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module dsp_macro_monty_26_0_iff
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
  (* C_REG_CONFIG = "00000000000001000000100011010100" *) 
  (* C_SEL_WIDTH = "0" *) 
  (* C_SQUARE_FCN = "0" *) 
  (* C_TEST_CORE = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "virtexuplusHBM" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  dsp_macro_monty_26_0_iff_dsp_macro_v1_0_3 U0
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
meFr08+WyYXp3STSVgJXx8hHO5ClxcdPIZd10bR3IAgi+pEP7lj5Vu+8yKK1fZdwaCsKOlw9GTb9
tGpJxF9qpsPxt+zlTQlchvLDa4KKtvzdoTPbp5Y9v5D2D2qLFhWoLxPwdvUZQonTP3K1g0sDOi/x
tBWlWAsmfVQv6I66+Yveh6ui4kytvCPpo2OAc+7KghkfXhZ8RN8RtxN7jnQwDFImOSb84frL8NOp
Su5ttHmEPT5FlA2U0J3lOIVSqYsSvRSVE7Pqa5YKIVnu4bhcyVmNq/5e68ISNHl4ftHJcAhU4Z9N
XiiqmHMKqnjCZh8F7+RXSQWif0clNaasnRvnXw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
I82osWTD3SFUiuI1noSpa/tHMIfW4AFnDwsJFlXyiYrZyvSyHwr6Y6dZvckqe22CanqZcUAzux8B
VJV7VapAxtuKQG4GaHyUWoVJRJP0ZaLwEk1EkZC7ATDnByZlASAFDyms2fWRvBA8B/sFB/RIWmiG
HfufH55xbfq6X9RMrA2xNGxnScyD82r9ptZ9LUmNuq33YIFCF27mvf0lyTraGZBDV/F1IUF8nN30
PgXtOWes+ib8Tl08CtivcPAsQWTDBA9n0otqsFUcJmPGrOrvB8fumww1vvUk136erQl/ouG8VgK2
3AyPCu6OT35kdzxXDP71AIuaM/mbA7i8i3g5ew==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 31504)
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
