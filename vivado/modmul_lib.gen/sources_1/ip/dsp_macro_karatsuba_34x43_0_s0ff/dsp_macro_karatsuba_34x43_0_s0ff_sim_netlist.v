// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Wed Aug  7 11:08:33 2024
// Host        : toluntosun-Ubuntu running 64-bit Ubuntu 23.10
// Command     : write_verilog -force -mode funcsim
//               /home/toluntosun/Desktop/PhD/fpga_acceleration/karatsuba_dsp/karatsuba_dsp.gen/sources_1/ip/dsp_macro_karatsuba_34x43_0_s0ff/dsp_macro_karatsuba_34x43_0_s0ff_sim_netlist.v
// Design      : dsp_macro_karatsuba_34x43_0_s0ff
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu280-fsvh2892-2L-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dsp_macro_karatsuba_34x43_0_s0ff,dsp_macro_v1_0_3,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dsp_macro_v1_0_3,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module dsp_macro_karatsuba_34x43_0_s0ff
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
  (* C_REG_CONFIG = "00000000000000000011000001000000" *) 
  (* C_SEL_WIDTH = "0" *) 
  (* C_SQUARE_FCN = "0" *) 
  (* C_TEST_CORE = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "virtexuplusHBM" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  dsp_macro_karatsuba_34x43_0_s0ff_dsp_macro_v1_0_3 U0
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
O9um6ZQLHqiCFC5N+QpoULw+EN8Q3Xh9lmxDEZU9DNR0nybNSfGsO9vNluijSUC0dSXsDuB9zJgc
CTkBMsO81dNGCprHG3N6Gk4L4R55NuyGpoV4sKB6/8YrYSCFugWV5soO+iTGQXUYc+KWgaNZg/Br
5cyE6O8elLTlAabsSvErCel02ZeoC6xv38zarfpjStky/MwiGKt3qcPqmr/2zvtYRPHcEcR1wwBR
KLjVLbRzBRRVG+Cc8XI2ccGOjqjM7Uf0/411HlfdMfBNLu7opuWSY+SIcCUYISBu0f3KZw7fugM0
l+NFsjENsGOIyLy4z4aGY9R3RFtShxeH9RsWSQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ggpxdPOjCJVkUUFDjik4ZKrbt43BfRzZyjwFvQQmfFiLVGs4v9OcNwCf+dm+hKnO51kfSeoKpLmU
usw9Gv6Gu78QBfkkt/kMRu2p+UAF0LY/CbEKPrN3WLfqSO5PH9zjbIWXrPaUDHhMoBPfs6CEGHp6
OtD9OAySwFnDKsYhPY4JvJqJUFe1ePsmOL8HdWuQxwXs9Rj4mov3DS+Yc8RQgYPIyMygVlOOxqtQ
JKDmL2lDRIxJlj6D5fbNjZivmaqZvdiudfk8QIRtimtT0bxWwGNzz1arlsytcfCcfxrIyabZmCBS
xOxHKDu5/8DyM+nOJ2HS1u9jVrp8rRM0XJklnA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 26144)
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
