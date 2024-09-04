// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Wed Sep  4 17:18:29 2024
// Host        : toluntosun-Ubuntu running 64-bit Ubuntu 23.10
// Command     : write_verilog -force -mode funcsim
//               /home/toluntosun/Desktop/PhD/fpga_acceleration/modmul_git/vivado/modmul_lib.gen/sources_1/ip/word_red_qh26_0/word_red_qh26_0_sim_netlist.v
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
o60W4/iDxGP3LUIZgkLquRqCXmnvwfnToLclsRP4qfxBy/wkSDTP2CtwAOorW6e0Y5Ictry6QTkw
Z/QLk3nw4i7chYqoQUT/rINhX4Tqh6DlU/8dhJjIEs3g6ePTw6y5IlhO6PmizkqsY/yndi2XL1ZM
kDPjfj6k2JN2HgW7sMZlmNXWzXBurEAvXt8+xS1HMngcMieetJUTYeJvbLlbgRjAf+9p5fDu7t3n
laWQhE6dhF/2F0iRnl+AzJQbXkiH2Y/wZeqsop46Sb/qJGvv4j21OTlhSNZuAZtjMQ6iaRKdvOjP
m3n+7SGt8Te31fxvCTt7lV+sS2syBch/CHr0eQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
uyww5of7dIV5Hpz/TaQAxCF3KDrck9goRSSdQDjVT2V7mwodagGWAI6AKORl02e/Yyp+hy2hRwoW
E8+yg2K+tRTNlfNKogYpbcQjKonjEoJxBlzPQ2rXadWXyWQw5MVdGi8N7dQg/0EBSnpXUG13HOZJ
naaBexPrqO4D5UMsxq4wb96AT8lkEDcvqu3sSHEzHfA0CT9DaHVG1Ldqo1EWdMIeY+rWiJOCzCcR
msCfHni0NoThqzDXmGVaWaZAJiFBaVylbZDRdsxvCenmfiLY9LZMHItE+1rILmPmKu2Cz0UKH0q3
jcBQYDTDzNsPJBCHqtYPqOtosA/GPaEqFl4C/w==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 39008)
`pragma protect data_block
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
Q9bwRWeyoRMMlsD8gN/xrvp/Oxw=
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
