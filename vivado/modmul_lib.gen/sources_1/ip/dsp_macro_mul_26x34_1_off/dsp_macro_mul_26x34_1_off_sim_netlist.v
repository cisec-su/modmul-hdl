// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Wed Aug  7 01:10:58 2024
// Host        : toluntosun-Ubuntu running 64-bit Ubuntu 23.10
// Command     : write_verilog -force -mode funcsim -rename_top dsp_macro_mul_26x34_1_off -prefix
//               dsp_macro_mul_26x34_1_off_ dsp_macro_3_sim_netlist.v
// Design      : dsp_macro_3
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu280-fsvh2892-2L-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dsp_macro_3,dsp_macro_v1_0_3,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dsp_macro_v1_0_3,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module dsp_macro_mul_26x34_1_off
   (CLK,
    PCIN,
    A,
    B,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:pcout_intf:carrycascout_intf:carryout_intf:bcout_intf:acout_intf:concat_intf:d_intf:c_intf:b_intf:a_intf:bcin_intf:acin_intf:pcin_intf:carryin_intf:carrycascin_intf:sel_intf, ASSOCIATED_RESET SCLR:SCLRD:SCLRA:SCLRB:SCLRCONCAT:SCLRC:SCLRM:SCLRP:SCLRSEL, ASSOCIATED_CLKEN CE:CED:CED1:CED2:CED3:CEA:CEA1:CEA2:CEA3:CEA4:CEB:CEB1:CEB2:CEB3:CEB4:CECONCAT:CECONCAT3:CECONCAT4:CECONCAT5:CEC:CEC1:CEC2:CEC3:CEC4:CEC5:CEM:CEP:CESEL:CESEL1:CESEL2:CESEL3:CESEL4:CESEL5, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 pcin_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME pcin_intf, LAYERED_METADATA undef" *) input [47:0]PCIN;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [26:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [17:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [47:0]P;

  wire [26:0]A;
  wire [17:0]B;
  wire CLK;
  wire [47:0]P;
  wire [47:0]PCIN;
  wire NLW_U0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_U0_CARRYOUT_UNCONNECTED;
  wire [29:0]NLW_U0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_U0_BCOUT_UNCONNECTED;
  wire [47:0]NLW_U0_PCOUT_UNCONNECTED;

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
  (* C_HAS_PCIN = "1" *) 
  (* C_HAS_PCOUT = "0" *) 
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
  (* C_OPMODES = "000000000101010100000000" *) 
  (* C_P_LSB = "0" *) 
  (* C_P_MSB = "47" *) 
  (* C_REG_CONFIG = "00000000000000000000000001000100" *) 
  (* C_SEL_WIDTH = "0" *) 
  (* C_SQUARE_FCN = "0" *) 
  (* C_TEST_CORE = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "virtexuplusHBM" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  dsp_macro_mul_26x34_1_off_dsp_macro_v1_0_3 U0
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
        .PCIN(PCIN),
        .PCOUT(NLW_U0_PCOUT_UNCONNECTED[47:0]),
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
VPE/IepjvvszMzdrHmy27C2hJ+vM5ex7C3ss2WGhiXELpwCUCA5ckivJE8p2BY/HVT08IuDM4md8
dgm3C0+Lu3brFJ4N+f26LKUg0I+PDQKFQwbvdc0ZgIu5Dz+Zzci63beSI6h9a7ArIEK1mtN2KO7w
mVcVZ+1qkL2LGXn6AqcnMLGaoL57F6LIkK/WpotWuC3GDCF9uMBVGCgvmLwdK791AhJ1nOPdGJoo
H8MiImlOYaJ7zpObuIV5HZ2HymOXdovkbn5QB5459p2vDaEkvQ4NqVgVeCCsn4abAa0Cmri3g1Le
nh2to9e9dD1y96tP0oX2jIhf/PmFGwTzEY7b+g==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
uiHOhcYjsIkHJxLJsSHgHx62CJH293mc+X8o029xle5VP1hjbLbuhq20doLe85OI4QqHw8/SGvXO
BCu08K2kH9IwFnFZPu1AOJLAfnwAzhlpra8bqqCCEQMRmeqwkCoA5X9PgXBenFVMIpobBnTeg6Xx
bd0my6DLGWqazZjlw5wRVK/jYOq+TarSZ7NGOJ4mvh3oPFn33nzd0YRqwGiCSr2Z0PH6L03IqmtA
SrsEYYvRSgNT+TG3JqvIZ5V1bQ47Ir/3johUm9zXPEGprMiyQHhDxV24QgKXcJHygIfEVshVIVas
f5DIjN6wSqsCbcO4LynfARuTIRcylCY2DMZt5w==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 26224)
`pragma protect data_block
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
V/OQQg==
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
