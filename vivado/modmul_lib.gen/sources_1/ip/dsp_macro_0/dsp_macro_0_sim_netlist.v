// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Wed Aug  7 01:05:49 2024
// Host        : toluntosun-Ubuntu running 64-bit Ubuntu 23.10
// Command     : write_verilog -force -mode funcsim
//               /home/toluntosun/Desktop/PhD/fpga_acceleration/karatsuba_dsp/karatsuba_dsp.gen/sources_1/ip/dsp_macro_0/dsp_macro_0_sim_netlist.v
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
FdoBtJjODh193XGZUxSjC19dKDt+VKSVd1uFxNQjDA+pQmu7w5izIpinY5g/RKxTt5FnO71gwb9w
GjzowjIWYEavK7ZoRYN3ItHuo8XyfL3UQs9QEAwj29UQrhOfiyQ81YjZPlp0PFjHRn6cSWpZIyxj
Jdn4Px1inZXe2Zl8kv80gtl2/xjPxo8DiwVA8lDbKL1rjGD9Eyk38i40bsSW9qAYJ7KCntzz1sJ/
7OvsjGzXS/5xtJVGkaIGsoJhE9o6BcOvsOvXqkhj6cX1BNhos/R8503UStyOuC5oOkIItNmApqI4
ropSM2yQgt9Kt5xgmtUJKUPDfnB3lJrb+WwOkw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
lXQuT8VsOfaMntNUcBjTheTNAtz78/giDIeHimBC6grpQwfLnPL1td4qqV2zOh5mFb9XPfQFBJZ2
4N5PSKtUFbju+VbcKD+esT1UDa0bEghWZfKUu14jqBkwa0PPY1CEgsxbbnFkXx/mnSrriaAotYqy
f6Uby29aF1p5PTrYLDGMfJnPVEXP1xtkYu8PvF7V0vWJkkjnijI2mzruyfVEjj9z9Joo8MakpGO9
r9Kj/056kImqCnxQ7DNl4j1N38yK0AwggLYmxFa+JGFqAURe11MIUWJOQI9DG7aCq6xuxaEGjfwd
sSX5zxEveHK/jvqXyHyExSQvHE4A3DwbszeOTQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 26064)
`pragma protect data_block
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
Cbt0q4TUEfIpaGwmTjxe
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
