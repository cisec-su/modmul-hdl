// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Thu Aug 29 19:04:16 2024
// Host        : toluntosun-Ubuntu running 64-bit Ubuntu 23.10
// Command     : write_verilog -force -mode funcsim
//               /home/toluntosun/Desktop/PhD/fpga_acceleration/karatsuba_dsp/karatsuba_dsp.gen/sources_1/ip/word_red_c26_1/word_red_c26_1_sim_netlist.v
// Design      : word_red_c26_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu280-fsvh2892-2L-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "word_red_c26_1,dsp_macro_v1_0_3,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dsp_macro_v1_0_3,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module word_red_c26_1
   (CLK,
    PCIN,
    ACIN,
    B,
    C,
    ACOUT,
    PCOUT,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:pcout_intf:carrycascout_intf:carryout_intf:bcout_intf:acout_intf:concat_intf:d_intf:c_intf:b_intf:a_intf:bcin_intf:acin_intf:pcin_intf:carryin_intf:carrycascin_intf:sel_intf, ASSOCIATED_RESET SCLR:SCLRD:SCLRA:SCLRB:SCLRCONCAT:SCLRC:SCLRM:SCLRP:SCLRSEL, ASSOCIATED_CLKEN CE:CED:CED1:CED2:CED3:CEA:CEA1:CEA2:CEA3:CEA4:CEB:CEB1:CEB2:CEB3:CEB4:CECONCAT:CECONCAT3:CECONCAT4:CECONCAT5:CEC:CEC1:CEC2:CEC3:CEC4:CEC5:CEM:CEP:CESEL:CESEL1:CESEL2:CESEL3:CESEL4:CESEL5, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 pcin_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME pcin_intf, LAYERED_METADATA undef" *) input [47:0]PCIN;
  (* x_interface_info = "xilinx.com:signal:data:1.0 acin_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME acin_intf, LAYERED_METADATA undef" *) input [29:0]ACIN;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [17:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 c_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME c_intf, LAYERED_METADATA undef" *) input [47:0]C;
  (* x_interface_info = "xilinx.com:signal:data:1.0 acout_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME acout_intf, LAYERED_METADATA undef" *) output [29:0]ACOUT;
  (* x_interface_info = "xilinx.com:signal:data:1.0 pcout_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME pcout_intf, LAYERED_METADATA undef" *) output [47:0]PCOUT;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [47:0]P;

  wire [29:0]ACIN;
  wire [29:0]ACOUT;
  wire [17:0]B;
  wire [47:0]C;
  wire CLK;
  wire [47:0]P;
  wire [47:0]PCIN;
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
  (* C_HAS_A = "0" *) 
  (* C_HAS_ACIN = "1" *) 
  (* C_HAS_ACOUT = "1" *) 
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
  (* C_HAS_PCIN = "1" *) 
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
  (* C_OPMODES = "000000011101010100000000" *) 
  (* C_P_LSB = "0" *) 
  (* C_P_MSB = "47" *) 
  (* C_REG_CONFIG = "00000001000001100011100011000100" *) 
  (* C_SEL_WIDTH = "0" *) 
  (* C_SQUARE_FCN = "0" *) 
  (* C_TEST_CORE = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "virtexuplusHBM" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  word_red_c26_1_dsp_macro_v1_0_3 U0
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACIN(ACIN),
        .ACOUT(ACOUT),
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
        .PCIN(PCIN),
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
M0echNEtLzMp2lk9iX88jGE1QbMdQ49QZZ062AnelaiPBDayOVOlYTC/oizLe7mBJw662biGICd7
+3KHiL0vgvUJIRDlUCRz3Sy1iOMc0Im8UyCM5GDezv9PXbDPxesm5BuQv6sUHYdZPJS/VMuPTxxe
YqehASlxnr4ljyqmU0nDHrmrnoMW6dzuhXRhNtdj2M6v8FeHu6jYDnH7R22+9pRTR0QThNei0TzK
WnJRFzfooCOMjo06MtBHyEIqqap4GqfEZx81iWsXQU2FXIWlEOeS3BhQ1W5bxWHbEqvWkzhWhmUp
p4UZKmZCroQkyTsG2hiG4uZ/5Ut2dFzDPpnjmQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
yRCagn5KdZuxfcuSQrxHX+vfjGTIzq5rhHGHT5ZmaqkosZyUBX7TCmBy+buW753dXvYrumwtH0Zs
QoBImLlz6szj4f7MiTcm9pVxQR3GluTVs37SCj5lR/t5aha3JNXHaiPw+qqZ7V6Eti/6Kx7xjwZL
waCJtO9Ez8FaWdx4NWBTyhGSaEys0jhGTYy0sqY07B9OAEnVvSStC+lX0dWYEKCgAmSbXv/8ipvM
f6eK6ayQs91k33gqSxvLSWsmJbWI5BA78Uoj21Xn+tbFBd96OKciHYM3eJUMnhvsKwdGGrFzqo8x
zCrZCqvmMTGmd2HOl4GxK9JOtEwBQL925n/+Dw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 41888)
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
