// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Wed Aug  7 14:12:20 2024
// Host        : toluntosun-Ubuntu running 64-bit Ubuntu 23.10
// Command     : write_verilog -force -mode funcsim
//               /home/toluntosun/Desktop/PhD/fpga_acceleration/karatsuba_dsp/karatsuba_dsp.gen/sources_1/ip/dsp_macro_mul_26x34_0_iff/dsp_macro_mul_26x34_0_iff_sim_netlist.v
// Design      : dsp_macro_mul_26x34_0_iff
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu280-fsvh2892-2L-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dsp_macro_mul_26x34_0_iff,dsp_macro_v1_0_3,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dsp_macro_v1_0_3,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module dsp_macro_mul_26x34_0_iff
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
  (* C_REG_CONFIG = "00000000000000000011000000000100" *) 
  (* C_SEL_WIDTH = "0" *) 
  (* C_SQUARE_FCN = "0" *) 
  (* C_TEST_CORE = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "virtexuplusHBM" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  dsp_macro_mul_26x34_0_iff_dsp_macro_v1_0_3 U0
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
ZMNH8/kk9OFGjkpdq2oX846OZOMh3wkq4JDT1fZqYvTBEyNmHKWlJPwfakA8uXL5OXii8WQk1LF/
vuetgb1X99hr/dLXXFCrvQe4Ns31K2TWkyZW3GSGtP91mNvNVxWvpGeFk0op5edFadZH3WxPbD+h
ZUnw88WCuRPuhcw3Qxaqmo5IcJ+NJCE6qK1nlckI6uLo/n73Mw7wny4CMRTxzp/VF/HFuhjhWe/N
GEcmrLrfw8ncuFwsWV4VsUs39oUyAEgWz1pf2YcNqMbrblU8Uw0600WdDo9iQge4M4Ns9NeTeiNi
/XRj9fqJhDc4aFtHEx2xcJi8p2rRo/Luo6OtIQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ySINXN22DWJO/EuRDKOzYHVc1eC1250W7TVETH/iDIPeGwoG/x27vDF5aaP0qVADZAP/FNMaDhQr
jnvjNzL0lBtYpDdY1RXkb47DVAsQ9pyYynjH7qKeEBefyJA3uzdHhUKypcNS3or8RKgdlXGZitL8
doFxEoNDSvjk06gedQYx+sp5WBLBsu2xyxJZW+MzAxNZcHgwUSJrd1W+Qtrycdoyj1vs4OdcnGE8
KzweOHAKUQ9tzsMgXWss9eIddQpfCdrcNKGNl2CHdhh/1JLL7E7kHyL4Cu83GEQQspshJw2jA3aO
A9P4EVXAEUh/XfAxQqeKXi/N6aH1LNTF/IXQvw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 21632)
`pragma protect data_block
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
ZYv7ASC0EBRS5UiYNyK7B9pBXfADUhWNOsjkn2o=
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
