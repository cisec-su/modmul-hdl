// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Fri Aug 16 18:25:20 2024
// Host        : toluntosun-Ubuntu running 64-bit Ubuntu 23.10
// Command     : write_verilog -force -mode funcsim -rename_top dsp_macro_karatsuba_34x43_1_iffs0ff -prefix
//               dsp_macro_karatsuba_34x43_1_iffs0ff_ dsp_macro_karatsuba_34x43_1_iffs0ff_sim_netlist.v
// Design      : dsp_macro_karatsuba_34x43_1_iffs0ff
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu280-fsvh2892-2L-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dsp_macro_karatsuba_34x43_1_iffs0ff,dsp_macro_v1_0_3,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dsp_macro_v1_0_3,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module dsp_macro_karatsuba_34x43_1_iffs0ff
   (CLK,
    A,
    B,
    PCOUT,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:pcout_intf:carrycascout_intf:carryout_intf:bcout_intf:acout_intf:concat_intf:d_intf:c_intf:b_intf:a_intf:bcin_intf:acin_intf:pcin_intf:carryin_intf:carrycascin_intf:sel_intf, ASSOCIATED_RESET SCLR:SCLRD:SCLRA:SCLRB:SCLRCONCAT:SCLRC:SCLRM:SCLRP:SCLRSEL, ASSOCIATED_CLKEN CE:CED:CED1:CED2:CED3:CEA:CEA1:CEA2:CEA3:CEA4:CEB:CEB1:CEB2:CEB3:CEB4:CECONCAT:CECONCAT3:CECONCAT4:CECONCAT5:CEC:CEC1:CEC2:CEC3:CEC4:CEC5:CEM:CEP:CESEL:CESEL1:CESEL2:CESEL3:CESEL4:CESEL5, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [26:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [17:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 pcout_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME pcout_intf, LAYERED_METADATA undef" *) output [47:0]PCOUT;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [44:0]P;

  wire [26:0]A;
  wire [17:0]B;
  wire CLK;
  wire [44:0]P;
  wire [47:0]PCOUT;
  wire NLW_U0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_U0_CARRYOUT_UNCONNECTED;
  wire [29:0]NLW_U0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_U0_BCOUT_UNCONNECTED;

  (* C_A_WIDTH = "27" *) 
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
  (* C_HAS_C = "0" *) 
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
  (* C_OPMODES = "000100100000010100000000" *) 
  (* C_P_LSB = "0" *) 
  (* C_P_MSB = "44" *) 
  (* C_REG_CONFIG = "00000000000011000011000000000100" *) 
  (* C_SEL_WIDTH = "0" *) 
  (* C_SQUARE_FCN = "0" *) 
  (* C_TEST_CORE = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "virtexuplusHBM" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  dsp_macro_karatsuba_34x43_1_iffs0ff_dsp_macro_v1_0_3 U0
       (.A(A),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_U0_ACOUT_UNCONNECTED[29:0]),
        .B(B),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_U0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
I1krdx7gKA/mtsKzjXcsWFvL0QVv2GCuAgLtfksEmqOwL6Md5/3kRVwVbSw7rd48No6TJX3d0n1o
c1wzI3sfDcsn4LM7Eqpj0kU32ftREkJanH+hu+5a8/fpkmP+koDn8xZoWZRAX5l0o3kQVdBytOE0
nlc4Hx4CI9BHBIr+f6Qmj9VwVbloQFRd5i+WKKKf5p8GIG6PISiW8NZk3SGu3t1R9SbIhhsg1CoC
0r613QCCqQRVGFVRFGuRrMDa4b+i3fGO7OtOggyL2HyZB5he3DB2S3VvbMQx5vSue0SPa4LDNf9t
b2AF/yyOwTb4Gn8FaeSxcUtRvAIsgV+0bwGYdA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
TWCYs5Tzxmxr/2GDO4H02d/HSJ3KNzWzo4LlBbRY0FqqqzZOfoIICRsWsyKoJrxJ4LRNW1WxkF5x
DBBuiyfOfFpPp8KHRLTUayWG+t2+6EQ/HmZ0wya25ZVl+FnZ0oRfxhtEdHPLWkMKMh9ElPzZIKXX
55D2f9mr/csPwo/q3Jyk3cabOWgbdDI8xjvxMBs9qvPeSPBPGTZuPaoHI5wloN2RUmZabCatCy0t
q/gp5csNpCu8mCye2Vb7YmbGDp0Awbk8AWX1eHig0G1ARrQhdnqY9hm8beTwD0bY1oBCoAQBKgQ/
GK6F0Pkeh9B5ll24Tbq4+R6DMYSd/efUmTqt8A==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 21664)
`pragma protect data_block
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
yUwt2w==
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
