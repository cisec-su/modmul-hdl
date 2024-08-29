// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Wed Aug 28 22:23:59 2024
// Host        : toluntosun-Ubuntu running 64-bit Ubuntu 23.10
// Command     : write_verilog -force -mode funcsim
//               /home/toluntosun/Desktop/PhD/fpga_acceleration/karatsuba_dsp/karatsuba_dsp.gen/sources_1/ip/word_red_qh26_1/word_red_qh26_1_sim_netlist.v
// Design      : word_red_qh26_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu280-fsvh2892-2L-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "word_red_qh26_1,dsp_macro_v1_0_3,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dsp_macro_v1_0_3,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module word_red_qh26_1
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
  (* C_REG_CONFIG = "00000000100001100011100011000100" *) 
  (* C_SEL_WIDTH = "0" *) 
  (* C_SQUARE_FCN = "0" *) 
  (* C_TEST_CORE = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "virtexuplusHBM" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  word_red_qh26_1_dsp_macro_v1_0_3 U0
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
AaaqTAqIDidycNAB4QfcUmuJ6N0uKkggr9ECDwRlyW/Y3eaIbeS7t8r2qWZpjDwcya6EvUxuFWYZ
onZx0VB+Yo+RR5GBf3gSY8XfP8+s618IJxmiIDsH2iKsohea8r4Vh5lNP/HAHHvDXok1Q8ry2gm/
caLYjgaVpo3cVeTUJDJfj4tmgIol2E1pGBTTfGo7lQGX6hyRe0W1t+E/IPrle29epGFA43MFS+U8
IP8io8XLUx84Hs4BtnD/ZQKCxs9mz/aftYpB++hJjv21Atx5TnhZtBTe7xi2rsw/eyIuv5i5V5Vl
omsXre0rJUgcoj34Gg2NmLyVrj2YLhx3ikIHwA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
JgZU+g1dL74LvhuZX7BTbmxLDPa8tO33mduH7b6MLwarIUSAXRxH2rVOSvRouileRO3y5yW/YiaT
sIoF4dDy4lg6XSNmSdQikGmkdPrdMcUSpJD4U3cpm6XXY/0O/yOEuRAvkluuyUzV4fHPyagczCIs
eKsM5ojBxcnX40UbTa8aNa1biOPQyI/zbMtCenn999zR+qKgsKX50d3XfBbqPqQVe5FIsuthZ6iH
jBCTqB0FbZ5zRNVbeEsbeviOwKzW7YDuoJ12hp0bMF0ML+RASnIrekbjqmCRVXZG9UJa1hU8r3yM
BCazhZwIPfBaSHR4QDA5ZKPqfqIhBqfXqoCMDw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 47856)
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
