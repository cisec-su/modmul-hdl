// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Wed Sep  4 17:19:25 2024
// Host        : toluntosun-Ubuntu running 64-bit Ubuntu 23.10
// Command     : write_verilog -force -mode funcsim
//               /home/toluntosun/Desktop/PhD/fpga_acceleration/modmul_git/vivado/modmul_lib.gen/sources_1/ip/dsp_macro_monty_26_0_iff/dsp_macro_monty_26_0_iff_sim_netlist.v
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
KXVvFWXDEQsizjrwAzBdggEMcjLOWCxHr4BYd6WhGcXT7K8l0tc16YuvdQxG1Bm5f60iLTozP4AC
k2YZnTig6SejEIS0elsMp9VfCmr62tRga7HM7JcCqsBC+Q2LdXzGihVMZjISgh8apMPd8BsGOgf3
/nhcJzVv4kXYEJtclMA/AUmzQQfn5efzTMO3oLnZQBpUMp2EbkH64cNECEdIVYeQz2K326/fkQBv
Qo2MH236HfK8xSwWLFljViUP7L3Az9GJLptFeORlVSoZlw/bMIYSQ6YP+3rZL3RKj0MtQbMYqj3i
ybgVowOUBQCgshHS2opmQkMyKrc2cjEO+IygWA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
baeDae5Dnu24U7fnB5yLdl+pwr8orxu93XmEYp4Xw5qJeuvBVgTj6N5nCRTaJ1K9m8bEjC+/7Z8J
GIz/TxjyLmRLCl8OKSqH6mcgvRWddmwr3bHimGEGBUQnL72jysuE6pS5SKTpGRuRKVWZoIPu4XJ1
pIb7sAlmI0AUcgfVjV4R5eWN31KWL6AVtJfe4t60b0nJDnBxVMPqPvQMn/HgLzggBCZmm4E3Z95K
vDKbUEX2UCioRLiQBlerJJLhGIBnxKoE652AFEeBRB1y3mf6eEOohFACbgF5Y7VJQ0w2tfPL1RVa
JrhA3I4hL5IOlA6d79Rj7dwLzL13+YUQaKIVjg==

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
