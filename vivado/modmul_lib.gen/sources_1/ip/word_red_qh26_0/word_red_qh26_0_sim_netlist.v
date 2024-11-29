// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Wed Aug 28 22:22:15 2024
// Host        : toluntosun-Ubuntu running 64-bit Ubuntu 23.10
// Command     : write_verilog -force -mode funcsim
//               /home/toluntosun/Desktop/PhD/fpga_acceleration/karatsuba_dsp/karatsuba_dsp.gen/sources_1/ip/word_red_qh26_0/word_red_qh26_0_sim_netlist.v
// Design      : word_red_qh26_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu280-fsvh2892-2L-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "word_red_qh26_0,dsp_macro_v1_0_3,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dsp_macro_v1_0_3,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module word_red_qh26_0
   (CLK,
    CARRYIN,
    A,
    B,
    C,
    ACOUT,
    PCOUT,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:pcout_intf:carrycascout_intf:carryout_intf:bcout_intf:acout_intf:concat_intf:d_intf:c_intf:b_intf:a_intf:bcin_intf:acin_intf:pcin_intf:carryin_intf:carrycascin_intf:sel_intf, ASSOCIATED_RESET SCLR:SCLRD:SCLRA:SCLRB:SCLRCONCAT:SCLRC:SCLRM:SCLRP:SCLRSEL, ASSOCIATED_CLKEN CE:CED:CED1:CED2:CED3:CEA:CEA1:CEA2:CEA3:CEA4:CEB:CEB1:CEB2:CEB3:CEB4:CECONCAT:CECONCAT3:CECONCAT4:CECONCAT5:CEC:CEC1:CEC2:CEC3:CEC4:CEC5:CEM:CEP:CESEL:CESEL1:CESEL2:CESEL3:CESEL4:CESEL5, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 carryin_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME carryin_intf, LAYERED_METADATA undef" *) input CARRYIN;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [26:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [17:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 c_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME c_intf, LAYERED_METADATA undef" *) input [47:0]C;
  (* x_interface_info = "xilinx.com:signal:data:1.0 acout_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME acout_intf, LAYERED_METADATA undef" *) output [29:0]ACOUT;
  (* x_interface_info = "xilinx.com:signal:data:1.0 pcout_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME pcout_intf, LAYERED_METADATA undef" *) output [47:0]PCOUT;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [47:0]P;

  wire [26:0]A;
  wire [29:0]ACOUT;
  wire [17:0]B;
  wire [47:0]C;
  wire CARRYIN;
  wire CLK;
  wire [47:0]P;
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
  (* C_HAS_A = "1" *) 
  (* C_HAS_ACIN = "0" *) 
  (* C_HAS_ACOUT = "1" *) 
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
  (* C_REG_CONFIG = "00000000000011101010100011010100" *) 
  (* C_SEL_WIDTH = "0" *) 
  (* C_SQUARE_FCN = "0" *) 
  (* C_TEST_CORE = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "virtexuplusHBM" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  word_red_qh26_0_dsp_macro_v1_0_3 U0
       (.A(A),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(ACOUT),
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
kUDSUkaJwgBhrU56UJgciFaxFQaOeGpU3aMGluWSUp8Nf3lTA3h1Q+ZRc7TdqOENH2/arakkvdMU
YWOQBwV5Hw2DLcN9rvR9v8AXJl5VRV5uvJhUoJT2bSDPz9tOFDfl0GYqN0hf3PSjrN2tbh2p1rvr
NV3fd+Vi6L/tKsXfx7FIoEzzWKGvTqaBqv8u6BUxvgkzlLTKGaKwvudOVOnDUXS9V3o71cDmTk0w
FntLMpnpxhuAy7LqkhdnjjoxOs7uICv+cUJR/QxW3ImfbDVgYyOLZ1mWkB7cdZMQ+/yK4d45tpre
P3TPSCc0ZTer+pKfTEqxuAtXRT1EyGubp2G8oQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
tSOhxRPcyt+zZbXnzfq5+Wnw82Vv6dGrx7KkU2WsLKGVt0brg/hEoc3nI+bHXFo3IOLVg0UmVTqY
tOq3e9LHSIX2vKiLYl/TgoGdbGQbyH11Exu0w7DOSfIZ/vIVGEpkID/u8i3AWX6pK1XPp5saGdZ+
d7Opp8JExxTgXBP1DFQ/sRyyqecVecLDbtN04xLLTX/w4RJpB9/ChNG2/MOj1g1cfwx0dlEXHnqb
rMhz9uu3BdJlpPEtVQL+y6U/Fu4xtrCd7agfEwjOfIYIPZMrZee4dNNwhvEC8Tbfov2EtltgfWVs
JyPiEydUFSzlyJLygDb+HlP30hyoVGUtmNHB1Q==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 39008)
`pragma protect data_block
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
KULxH/gBap9CHlVpHPIsLjCOKAE=
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
