// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Wed Sep  4 17:18:29 2024
// Host        : toluntosun-Ubuntu running 64-bit Ubuntu 23.10
// Command     : write_verilog -force -mode funcsim
//               /home/toluntosun/Desktop/PhD/fpga_acceleration/modmul_git/vivado/modmul_lib.gen/sources_1/ip/dsp_macro_karatsuba_34x43_0_iffs0s1ff/dsp_macro_karatsuba_34x43_0_iffs0s1ff_sim_netlist.v
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
DsbxGXdbno5kSESPMUhZoIoOy1cOzlX23yu5hbZ92I5ZSCrHFkiAZxvhmtTisHdrEFR2HXcXEZ1G
ilGi0YtTWVLZuw/K4YU1P7ybpsoQ/tl2bweI5WuqLQ6MeNzbnkrvxpKAMGEfPmm4B2h9gaZhTHdo
/MGOc/hOZGiMY2G3T6GPa0zd+tVVdo5TzjW+ymllWfc+a8M6ycAtkq2e45WfZy20teyAkSHEitz5
MU5KmZsatAJ9HtRdLfI5BDFaBig45kzvpXJiZ6E36ora3iO02nnCN919+ZtDdgMbjpqe0We3j8EM
pLJI/GPsclioBg2ovVSzR+l8hPCk2oAJ4th96g==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
4f7X0diEb4wn3hfUIA8roN/TN8sguMJqGhT4yDQ4CAqAI5DFO4zfcnWgnv2XqHIyfpVdUHrlmfUL
UmpggB+mjScdO1GkiEUQ3ddpbSj+Y/CQMnCyUttk101afJLkWJ9JDMwByvA/SdH9VyVd/J10mydl
2//fvE7mnnj0ZNPmofrYXO5iJjHHmrASpT2JwIxbQuCUQ95wA8Wn3e8GEgOnj+3Tz1xcEPKi63wX
fIU6+IXBsq6OnP7J0N1ZJm94plTQ6wJGjkdv1zNH/lBavjk2eimhtFY/bM+i/6qQMpYwo46s5NZK
RLHPz0emFrbc60RaAX2td9MsEyuQPQY1gGK5QQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 26176)
`pragma protect data_block
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
7RHYNf6z6xXBwDW64w==
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
