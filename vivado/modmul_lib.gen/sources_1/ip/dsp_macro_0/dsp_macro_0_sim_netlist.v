// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Wed Sep  4 17:17:11 2024
// Host        : toluntosun-Ubuntu running 64-bit Ubuntu 23.10
// Command     : write_verilog -force -mode funcsim
//               /home/toluntosun/Desktop/PhD/fpga_acceleration/modmul_git/vivado/modmul_lib.gen/sources_1/ip/dsp_macro_0/dsp_macro_0_sim_netlist.v
// Design      : dsp_macro_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu280-fsvh2892-2L-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dsp_macro_0,dsp_macro_v1_0_3,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dsp_macro_v1_0_3,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module dsp_macro_0
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
  (* C_REG_CONFIG = "00000000000000000000000001000000" *) 
  (* C_SEL_WIDTH = "0" *) 
  (* C_SQUARE_FCN = "0" *) 
  (* C_TEST_CORE = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "virtexuplusHBM" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  dsp_macro_0_dsp_macro_v1_0_3 U0
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
QFCqNW4xeyWFfBFmopAnTjbeNfbWuBLYYX/C7cRwm835d9pfRT0rhZcnE5ojK/hMVPvIlwue7lWt
AgqvZs36y0wcEiXvnGEC/5qVC9x2Cx7As79cNbrHBzeQySrQ3rCT3rdaOZ86cTUHNeokB7wOkODK
BEyht+8rFlzGzA3DHRTMzzdO9JH9pMkUQKdt+0wMvLnqJfEuMb7z/ZTJfna1zH054O4qp7+/YzXv
vCXoCAJU32IjDVRnMkqPe6EoTEDhHVCmJKiJFcPyisxKyE7EE0Xv/fTjQTaqy2UJbITFFvl/FfOO
G1qNZqhNbc6PErGPli70IWHPX9skCzVTNOZ1Jg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qkrNTVdhg+P0LmFC6h3bfEGFxKpVd37JFZmBIavL+o6y1dRxtgzjSYaIgQrzbh/g4vgFF0Ox/wqU
GtMtULFikHFHNWoZhAQu3Lww1jFoLl25n3jaijiY1cofhpLKkul3HyXyXxQJH/UZyj8FfHTz7JCq
LvSlnh3Nt8R/72HUVLzlunFUsgTp1IcBWkCPhyvhr6mF8EAhuiXFTEoR7PFZnTA8RdyMqSnJ23BM
gDNi9XrFxLjmUxodCHI0+ykuxy9zqHww002kZkarxK2zkI/iqQewFugN0yjwpu7deROpad8T6G5u
rlJ77gtIUNMqpshXVVr4WddLBPBaLbJr9Nf8jg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 26064)
`pragma protect data_block
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
DFKb5YlD3B1wd0tLaDyj
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
