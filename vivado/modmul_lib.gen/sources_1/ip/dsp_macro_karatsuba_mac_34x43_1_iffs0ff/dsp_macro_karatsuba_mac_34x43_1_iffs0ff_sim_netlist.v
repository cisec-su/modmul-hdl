// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Wed Sep  4 17:19:25 2024
// Host        : toluntosun-Ubuntu running 64-bit Ubuntu 23.10
// Command     : write_verilog -force -mode funcsim
//               /home/toluntosun/Desktop/PhD/fpga_acceleration/modmul_git/vivado/modmul_lib.gen/sources_1/ip/dsp_macro_karatsuba_mac_34x43_1_iffs0ff/dsp_macro_karatsuba_mac_34x43_1_iffs0ff_sim_netlist.v
// Design      : dsp_macro_karatsuba_mac_34x43_1_iffs0ff
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu280-fsvh2892-2L-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dsp_macro_karatsuba_mac_34x43_1_iffs0ff,dsp_macro_v1_0_3,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dsp_macro_v1_0_3,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module dsp_macro_karatsuba_mac_34x43_1_iffs0ff
   (CLK,
    A,
    B,
    C,
    PCOUT,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:pcout_intf:carrycascout_intf:carryout_intf:bcout_intf:acout_intf:concat_intf:d_intf:c_intf:b_intf:a_intf:bcin_intf:acin_intf:pcin_intf:carryin_intf:carrycascin_intf:sel_intf, ASSOCIATED_RESET SCLR:SCLRD:SCLRA:SCLRB:SCLRCONCAT:SCLRC:SCLRM:SCLRP:SCLRSEL, ASSOCIATED_CLKEN CE:CED:CED1:CED2:CED3:CEA:CEA1:CEA2:CEA3:CEA4:CEB:CEB1:CEB2:CEB3:CEB4:CECONCAT:CECONCAT3:CECONCAT4:CECONCAT5:CEC:CEC1:CEC2:CEC3:CEC4:CEC5:CEM:CEP:CESEL:CESEL1:CESEL2:CESEL3:CESEL4:CESEL5, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [26:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [17:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 c_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME c_intf, LAYERED_METADATA undef" *) input [47:0]C;
  (* x_interface_info = "xilinx.com:signal:data:1.0 pcout_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME pcout_intf, LAYERED_METADATA undef" *) output [47:0]PCOUT;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [47:0]P;

  wire [26:0]A;
  wire [17:0]B;
  wire [47:0]C;
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
  (* C_OPMODES = "000100100011010100000000" *) 
  (* C_P_LSB = "0" *) 
  (* C_P_MSB = "47" *) 
  (* C_REG_CONFIG = "00000000000011000011100010000100" *) 
  (* C_SEL_WIDTH = "0" *) 
  (* C_SQUARE_FCN = "0" *) 
  (* C_TEST_CORE = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "virtexuplusHBM" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  dsp_macro_karatsuba_mac_34x43_1_iffs0ff_dsp_macro_v1_0_3 U0
       (.A(A),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_U0_ACOUT_UNCONNECTED[29:0]),
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
gvPkNXCVQQdyKjEvyNBeXcvyeatNMx7BIU8QYNG4R15aIV45kEErdQ+So+k9DeGovJBNoR4mxAn9
qxGPPkwniEQml+F+snW5rbuiGM2WjgibwO23HsWWNjj7jE8PeVXs1AswDHawmqxOXIAuiNMcuNrL
SjeZG8Icqm5DC0ium59KvB8XiddlRyFeWG741UTVu1razFu4gw0dR4ENuLmlYsVL9hrJsiqyjnVy
GzAapc1wiXyEvNIZYhyVloksv0XY9AvsAy+bql5hk1Q+HB1/lolULgN0szGWiB09uRCkSngA0vcs
ciWeXNzbJiKRmkv4/of+/V6pKHuUk927fyo+Rw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
pBofx4NDfoVAKNkmo4E7a2eZ2bgRgr7rrwvYl6XWMC1fUD9NfjGn93MGOyd6CAASKX9llbM3Ba5g
8lYENXDMI+N23PQJ82/mb9D7ffXKcQRx1wv2ACej7uc8iKjWfSEBSeHxcZ7h4HW0xQfzxo+c8kZq
RF2I/78T0FByfrpoCW9HDDXLuqQ2YChRfZq2uY9rMEB+fjsSqCjsqg5S+wBtbPWz6zJHV5K5vc/l
5f1nnvmjj+WCoW/zjqUtVD1ltJv0Zp4kIkY05PXJ7pd7b+kg0clVyDetbPbDIGXBYp8yEvMNMlWy
/XZuNXubOYAJ5vb0hOs3ZOlFqTdo3q52YZdOaw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 31456)
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
