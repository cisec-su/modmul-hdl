// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Wed Sep  4 17:17:12 2024
// Host        : toluntosun-Ubuntu running 64-bit Ubuntu 23.10
// Command     : write_verilog -force -mode funcsim
//               /home/toluntosun/Desktop/PhD/fpga_acceleration/modmul_git/vivado/modmul_lib.gen/sources_1/ip/dsp_macro_mul_26x34_1_ioff/dsp_macro_mul_26x34_1_ioff_sim_netlist.v
// Design      : dsp_macro_mul_26x34_1_ioff
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu280-fsvh2892-2L-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dsp_macro_mul_26x34_1_ioff,dsp_macro_v1_0_3,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dsp_macro_v1_0_3,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module dsp_macro_mul_26x34_1_ioff
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
  (* C_REG_CONFIG = "00000000000000000011000001000100" *) 
  (* C_SEL_WIDTH = "0" *) 
  (* C_SQUARE_FCN = "0" *) 
  (* C_TEST_CORE = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "virtexuplusHBM" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  dsp_macro_mul_26x34_1_ioff_dsp_macro_v1_0_3 U0
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
Ro3p9zmq49sghj3j9EBrrO7xBkdJoFjJX2GOMnuJmuBc2BwJx0oKqCYsKPIIx8k9gxBFUj83W0VF
Km/B3jP2mFMUKuj5oGqUvR2Hvlw6BB0VXT//nL7X3PeNvq9R8bFs/MI6uH7L6ionIhRqackIQe57
p6DGi9QuubnAgYjBUi3WPTYY6afen2fqVdnnd8kYFeWMW7MK7PvZB5BMEYExNDRR1mT6QSChqf7N
1yclDL6cTIMsy7SEnrH62g8pQ+6wrrXJIXWVyP+zZVf/Xfs9CHdn5tvz5BHAdbdgH2RDLHyuvyl3
ElGhoWnf6qxPTEXREzEoLJq71HVvEF4qr8mvCg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QHuj1An3d45kSIZ1D5rtWVc6Ayq3NcY3IztoCTLcuF08L7pAQrCs2JBw/ZKADfbilzz39DBSvReN
Ts14qtzOP+RRqb6THxVmEDbqUwFbhY7dn5OiNN+kHNUwFOjS6aFI/ikPxqgDQJVgtLfHErYfBwne
rbyHkYombqKYr+4rKBquISBeVwWfxAvt6huFCqd+hYUEZssNcrBRgNQohKr2Y1QCQ0pSqa5te8jG
sjBvvUW1FP5XVHHr7PFha7koofXf8/IT2RQ5uMNwgVTZLOsY7sHc2QaxwsbyToYkz7HxGmMDu+lt
PyN0+ejFNLvmWMDi94/Re3PfdsNqhYaQrC37AQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 26352)
`pragma protect data_block
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
fnxWnAr2i4cjy6oRJkb95B+4
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
