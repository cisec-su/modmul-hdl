// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Sat Aug 17 19:34:44 2024
// Host        : toluntosun-Ubuntu running 64-bit Ubuntu 23.10
// Command     : write_verilog -force -mode funcsim
//               /home/toluntosun/Desktop/PhD/fpga_acceleration/karatsuba_dsp/karatsuba_dsp.gen/sources_1/ip/dsp_macro_mul_17x47_0_iff/dsp_macro_mul_17x47_0_iff_sim_netlist.v
// Design      : dsp_macro_mul_17x47_0_iff
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu280-fsvh2892-2L-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dsp_macro_mul_17x47_0_iff,dsp_macro_v1_0_3,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dsp_macro_v1_0_3,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module dsp_macro_mul_17x47_0_iff
   (CLK,
    CARRYIN,
    A,
    B,
    C,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:pcout_intf:carrycascout_intf:carryout_intf:bcout_intf:acout_intf:concat_intf:d_intf:c_intf:b_intf:a_intf:bcin_intf:acin_intf:pcin_intf:carryin_intf:carrycascin_intf:sel_intf, ASSOCIATED_RESET SCLR:SCLRD:SCLRA:SCLRB:SCLRCONCAT:SCLRC:SCLRM:SCLRP:SCLRSEL, ASSOCIATED_CLKEN CE:CED:CED1:CED2:CED3:CEA:CEA1:CEA2:CEA3:CEA4:CEB:CEB1:CEB2:CEB3:CEB4:CECONCAT:CECONCAT3:CECONCAT4:CECONCAT5:CEC:CEC1:CEC2:CEC3:CEC4:CEC5:CEM:CEP:CESEL:CESEL1:CESEL2:CESEL3:CESEL4:CESEL5, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 carryin_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME carryin_intf, LAYERED_METADATA undef" *) input CARRYIN;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [24:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [17:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 c_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME c_intf, LAYERED_METADATA undef" *) input [47:0]C;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [47:0]P;

  wire [24:0]A;
  wire [17:0]B;
  wire [47:0]C;
  wire CARRYIN;
  wire CLK;
  wire [47:0]P;
  wire NLW_U0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_U0_CARRYOUT_UNCONNECTED;
  wire [29:0]NLW_U0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_U0_BCOUT_UNCONNECTED;
  wire [47:0]NLW_U0_PCOUT_UNCONNECTED;

  (* C_A_WIDTH = "25" *) 
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
  (* C_OPMODES = "000010011000010100000000" *) 
  (* C_P_LSB = "0" *) 
  (* C_P_MSB = "47" *) 
  (* C_REG_CONFIG = "00000000000000000010100011010100" *) 
  (* C_SEL_WIDTH = "0" *) 
  (* C_SQUARE_FCN = "0" *) 
  (* C_TEST_CORE = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "virtexuplusHBM" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  dsp_macro_mul_17x47_0_iff_dsp_macro_v1_0_3 U0
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
XahqdXet9SBD4qWaoef2JYYnAWPCHa6DmSmC6IsdmB+1+2UPznSVm6MyKiSoPguuLg1cT17lKLIa
5F2RmS4ezGSMiqEmGE32lKY4Q4s7UmhOGLPJW2ux0jtRcGnQ49ydDILUmSjcNmQYwQWf+2L94iS+
+HGKvY92iaCc/dw1lEsloQyOMLBkdiICap558AkudtA+rV9ZV39kRG6lnsvE4RdKfkV5J9rlEmPx
QhLPoOiAserZpVTroOpqHS7HTiEtqDTVKMoQgjYvoAxrrRSH+Y2K/WiwMwpO4qlLVKTXcw06SL2x
Zl10AqEJ94oBKQbsEVzm97KK/Oc2Kv6O9/cxKA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
zjruGb7UHMJk5W5jHePFChMgRraM/+ckA377C/9yLFLqx9jvpXizIo5YOHHIusboq8czg+g6ZPSN
fx5wYan+8Y+ElUNWt+0G2x5up/gOcGgIuFOnGzZZQ7CUHPcH8meFdU8i/MFHZriS98xpKY1yE15N
n+djcE47+PX3DNjjt4286sn5xB/IO3fDYxY67pinILFXjpjPD/0CMcdA0JQ8PZgf5+dmtfYnWZky
VK2c960Rvh+0FvwHV6AJqLX/7ZNZVeSYb4So5LZST8EvbCqZG7Z+Gap3riIR56faF1zvdmBYUkFC
HQQ54UQkXtOaFdNlP1dW0doIIVi29bBqKHJ3Sw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 36672)
`pragma protect data_block
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
vY5QB4ZDumTAnXsOYxsD1hsegc8r
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
