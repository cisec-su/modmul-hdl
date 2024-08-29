// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Fri Aug 16 18:22:01 2024
// Host        : toluntosun-Ubuntu running 64-bit Ubuntu 23.10
// Command     : write_verilog -force -mode funcsim
//               /home/toluntosun/Desktop/PhD/fpga_acceleration/karatsuba_dsp/karatsuba_dsp.gen/sources_1/ip/dsp_macro_karatsuba_34x43_0_iffs0s1ff/dsp_macro_karatsuba_34x43_0_iffs0s1ff_sim_netlist.v
// Design      : dsp_macro_karatsuba_34x43_0_iffs0s1ff
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu280-fsvh2892-2L-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dsp_macro_karatsuba_34x43_0_iffs0s1ff,dsp_macro_v1_0_3,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dsp_macro_v1_0_3,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module dsp_macro_karatsuba_34x43_0_iffs0s1ff
   (CLK,
    PCIN,
    A,
    B,
    C,
    D,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:pcout_intf:carrycascout_intf:carryout_intf:bcout_intf:acout_intf:concat_intf:d_intf:c_intf:b_intf:a_intf:bcin_intf:acin_intf:pcin_intf:carryin_intf:carrycascin_intf:sel_intf, ASSOCIATED_RESET SCLR:SCLRD:SCLRA:SCLRB:SCLRCONCAT:SCLRC:SCLRM:SCLRP:SCLRSEL, ASSOCIATED_CLKEN CE:CED:CED1:CED2:CED3:CEA:CEA1:CEA2:CEA3:CEA4:CEB:CEB1:CEB2:CEB3:CEB4:CECONCAT:CECONCAT3:CECONCAT4:CECONCAT5:CEC:CEC1:CEC2:CEC3:CEC4:CEC5:CEM:CEP:CESEL:CESEL1:CESEL2:CESEL3:CESEL4:CESEL5, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 pcin_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME pcin_intf, LAYERED_METADATA undef" *) input [47:0]PCIN;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [26:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [17:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 c_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME c_intf, LAYERED_METADATA undef" *) input [43:0]C;
  (* x_interface_info = "xilinx.com:signal:data:1.0 d_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME d_intf, LAYERED_METADATA undef" *) input [26:0]D;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [47:0]P;

  wire [26:0]A;
  wire [17:0]B;
  wire [43:0]C;
  wire CLK;
  wire [26:0]D;
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
  (* C_C_WIDTH = "44" *) 
  (* C_D_WIDTH = "27" *) 
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
  (* C_HAS_D = "1" *) 
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
  (* C_OPMODES = "000000011001010100011000" *) 
  (* C_P_LSB = "0" *) 
  (* C_P_MSB = "47" *) 
  (* C_REG_CONFIG = "00000000000010010011000001000100" *) 
  (* C_SEL_WIDTH = "0" *) 
  (* C_SQUARE_FCN = "0" *) 
  (* C_TEST_CORE = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "virtexuplusHBM" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  dsp_macro_karatsuba_34x43_0_iffs0s1ff_dsp_macro_v1_0_3 U0
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
        .D(D),
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
SQpQeRPNKWB4T4SXgCKTwA39igVi2VQwlXrzSexbnS08MwKZm4BSFtHy5F0Y2o8g3zm+Y3IVQLrL
IzWWSMAFmSZ3UwxL2nOTfsjGxDMy2Bdpi7erv5dm8ooedxKPOkm2yL2AmuCzjPbVbGB9gqyZNDz1
tEDE3IynmnacZDa4ZUdNZzOZIByfhmTIV6Vf9uBhUY2ExKazos/FTcassFuVkKohcZzaMWmbChXd
Fj02LK9wwawkr2l7JG7pv67p0BMe9wgJ0z7lDQjKJKvdJAG/myFIsPwdXBqO8yF3XsWQYTt5KXxd
ynxcUHXuqzPtLOihQMs6Pn09M2hElStk8N2poA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Z4eCuoZGqxQPEsm4Yh4oBE6Nwb7Q7MQaTsn7NezyPDbE+/8rMlZkMIrcFqEuAi1mwY6OEzHmPe8O
iu/yhnmT4FGzpidN/V19QfXWMoCduqNx+eU3g9poI+v8AQXrQsG1DufUyI1MYUxaYdUycvN+w8c+
MljLDjh/gSAGhuze0M5yNNTDx/J596wtgqxnDif/c40GOUJLKa/Hz60eKtqCTfipOb4yzIWa9jO/
C0zv+t/LNlneugP5a7bzlRjhryQk8QMnUG2SajApwvf5zU85sAZbkszo3kCyoXCb0UGl9u/r60/c
6rmdSTKKsvJiqyuMmBjDNNA5M63z4EXAt5UyBw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 26176)
`pragma protect data_block
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
siW1mJ/aUicgGxkKYA==
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
