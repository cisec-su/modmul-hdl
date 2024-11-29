// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Thu Aug  8 20:09:15 2024
// Host        : toluntosun-Ubuntu running 64-bit Ubuntu 23.10
// Command     : write_verilog -force -mode funcsim
//               /home/toluntosun/Desktop/PhD/fpga_acceleration/karatsuba_dsp/karatsuba_dsp.gen/sources_1/ip/dsp_macro_karatsuba_34x43_0_s0s1ff/dsp_macro_karatsuba_34x43_0_s0s1ff_sim_netlist.v
// Design      : dsp_macro_karatsuba_34x43_0_s0s1ff
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu280-fsvh2892-2L-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dsp_macro_karatsuba_34x43_0_s0s1ff,dsp_macro_v1_0_3,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dsp_macro_v1_0_3,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module dsp_macro_karatsuba_34x43_0_s0s1ff
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
  (* C_REG_CONFIG = "00000000000000000011000001000100" *) 
  (* C_SEL_WIDTH = "0" *) 
  (* C_SQUARE_FCN = "0" *) 
  (* C_TEST_CORE = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "virtexuplusHBM" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  dsp_macro_karatsuba_34x43_0_s0s1ff_dsp_macro_v1_0_3 U0
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
VMHdqWihi4DYTDeEWHW4sNgXCIKUv1UTB3JzEjxsx0uBQHPGGDTI+pd75z7wHk408AnkxBmkHzr8
qkuCVX2mCE3gP64hv5ovmwMrNegwbNptUkpwT6g11WA9cKElZlKQiITx5RKAh2QpIQOxNFoyH2A4
1YbTX12Zt1TvqkEG8BdXfyY7NAP6kybZX5E1zcmLjq2SeIovr9WWUeVzh5fuIDWJNZMmBVSSYRN3
ebiJMy6aLNx7uccfgdZhd5aZYOajQJUlE/M2tn0cY3sOdDoyZ62lCHH0BayBqth+WMGJoikzq++f
NJSL9HptWjd4+C6Y/rzQ+Q0d0b3FdWeImdAXSg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
FQptHUtEgNWRvZWTx6s5vfkboU5gBjeLpCsxQsughoCym+zoaFfE3Q6BY8qeSI3wRukVL2JUVVHp
8gJoH2i7TktZBMcLh1jUcMVcWZ5OOCKwnY2NEACOl4GHkZ8VfOZ+Sb0EZTcQMLl74k6ZCAFaM0E9
FExNUrjR1N/yyxblDukp73QcL8Tjqnr2bTUZGgLjH2ZRNjEksRNOC1mRsJ7EBcAyadml5/cUAL61
iKtpL1723O47lsofUMurG+Nthpa+1ebqGjtaa03N4iM8ONAqa/xdwkX7tmZ7wyzE8ke3mJs9PxOk
BlK2INPspvhEP9OTjzofvhmKaSr8M3mInOWvYA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 26160)
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
