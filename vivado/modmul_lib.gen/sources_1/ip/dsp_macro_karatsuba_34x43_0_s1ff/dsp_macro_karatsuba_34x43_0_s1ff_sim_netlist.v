// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Wed Aug  7 12:33:20 2024
// Host        : toluntosun-Ubuntu running 64-bit Ubuntu 23.10
// Command     : write_verilog -force -mode funcsim -rename_top dsp_macro_karatsuba_34x43_0_s1ff -prefix
//               dsp_macro_karatsuba_34x43_0_s1ff_ dsp_macro_karatsuba_34x43_0_sim_netlist.v
// Design      : dsp_macro_karatsuba_34x43_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu280-fsvh2892-2L-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dsp_macro_karatsuba_34x43_0,dsp_macro_v1_0_3,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dsp_macro_v1_0_3,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module dsp_macro_karatsuba_34x43_0_s1ff
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
  (* C_REG_CONFIG = "00000000000000000000000001000100" *) 
  (* C_SEL_WIDTH = "0" *) 
  (* C_SQUARE_FCN = "0" *) 
  (* C_TEST_CORE = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "virtexuplusHBM" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  dsp_macro_karatsuba_34x43_0_s1ff_dsp_macro_v1_0_3 U0
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
Rr6TzFl9tn4Y9VYkGZE3NVNflJYs6p6GHhepNqCVxNHdTm45kYVNh/7Gi5bw+A2bZLWblXztq9aA
/TLiwCq3Jfk6X3sZ8F2BWei/R2oXbn5DNHiCrauLQSf+zh4aJW1w6Fj8Nq7d9c6PxO37Q76eONga
jdqUwJhiDB1wTLVJj/OrEwwERmp+qV4euD74Znkb8NY2n6bUc8jVhDbYfB2gDoHpVHmPeA/2ogqB
dWI6XwsVThBQdhxBJs15NR1MYFhXWwQREGCi4zFKPX78ipdMHakEopoZZFFz388+8LC+CjvvmHkr
VZg6UGfMaeSrVIZO0fUNQfYtPbTMH/hGmid45A==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
cDrVVLM08KHAY091V86r2i0x8zQEkZ9ADIDbyBDxYfFnbT5iWOuMyLvf+9WFgCKu0iEX3vpPKCE0
3M5d8sM801SH0gUGeuIJdzlz6nEwLpjtOkaxr9ogAcqYdyyUK0b/x3hmkf+MLRhNOJwLJ58whwat
SZCxo8FFYneBm1MOf6Sas6wjQ7qPrlmqEA2H3KzboGX/xDF498y1eur3O0Mrf+l+dS5O4RrsPbPb
wYBAsEPuZho+ksmtCKgI79uz/tEFvDkbyHRex4MRikRyzXqr4J6pD7IzCPdudF8PI3hrx9y7vO4Z
3gy1zv3P5CojrAlkynsL4dT8CkLQV6RvWePgDg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 26032)
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
