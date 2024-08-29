// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Wed Aug  7 12:23:09 2024
// Host        : toluntosun-Ubuntu running 64-bit Ubuntu 23.10
// Command     : write_verilog -force -mode funcsim -rename_top dsp_macro_karatsuba_34x43_2 -prefix
//               dsp_macro_karatsuba_34x43_2_ dsp_macro_karatsuba_34x43_2_sim_netlist.v
// Design      : dsp_macro_karatsuba_34x43_2
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu280-fsvh2892-2L-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dsp_macro_karatsuba_34x43_2,dsp_macro_v1_0_3,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dsp_macro_v1_0_3,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module dsp_macro_karatsuba_34x43_2
   (CLK,
    A,
    B,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:pcout_intf:carrycascout_intf:carryout_intf:bcout_intf:acout_intf:concat_intf:d_intf:c_intf:b_intf:a_intf:bcin_intf:acin_intf:pcin_intf:carryin_intf:carrycascin_intf:sel_intf, ASSOCIATED_RESET SCLR:SCLRD:SCLRA:SCLRB:SCLRCONCAT:SCLRC:SCLRM:SCLRP:SCLRSEL, ASSOCIATED_CLKEN CE:CED:CED1:CED2:CED3:CEA:CEA1:CEA2:CEA3:CEA4:CEB:CEB1:CEB2:CEB3:CEB4:CECONCAT:CECONCAT3:CECONCAT4:CECONCAT5:CEC:CEC1:CEC2:CEC3:CEC4:CEC5:CEM:CEP:CESEL:CESEL1:CESEL2:CESEL3:CESEL4:CESEL5, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [17:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [17:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [35:0]P;

  wire [17:0]A;
  wire [17:0]B;
  wire CLK;
  wire [35:0]P;
  wire NLW_U0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_U0_CARRYOUT_UNCONNECTED;
  wire [29:0]NLW_U0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_U0_BCOUT_UNCONNECTED;
  wire [47:0]NLW_U0_PCOUT_UNCONNECTED;

  (* C_A_WIDTH = "18" *) 
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
  (* C_OPMODES = "000100100000010100000000" *) 
  (* C_P_LSB = "0" *) 
  (* C_P_MSB = "35" *) 
  (* C_REG_CONFIG = "00000000000000000000000000000100" *) 
  (* C_SEL_WIDTH = "0" *) 
  (* C_SQUARE_FCN = "0" *) 
  (* C_TEST_CORE = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "virtexuplusHBM" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  dsp_macro_karatsuba_34x43_2_dsp_macro_v1_0_3 U0
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
Jcylu6T/3QRG08vnnfiQsvl+DSTbKGa0d/IWaxj10jkwcCp6dyUVmZgRZIaeVt6yF0QVb4gkCX+n
cW8+ZofWUqE2+CSRlK4kvGjTHMBoFqlt1uXv9LajDJzCF88DcL/QRfNqkem1b7PPwCbjIFxa2Ztl
bbw8SPs0lnYiFnIFLZakA7Pas9eneu08wTNp+/r2n2HsnW97J1VpY7+ssKVOTaoy0AwvnC8RPSLe
mKM1q49MfdWplg+ZkZM9mRvqwNMHo8h1UMACay2LuOPa34MvYGJJK2A0PlP/qbLFSnt2ZDS7WGlz
F0J79ZGBaWXyQvuVVykolGNj+aiM0xMv4lVpnw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Rv4RUWP5yYTZB10n6kqQ+tPuuZWeNPnE6oL2G7jjKT6nIVvOe6sFgh+WI0ThM6HDMofT1PK6jlQS
J2zX7WkFgGc6uiIGq/X50gksQIAE/EP7gLvP+wmjljyMvn7J25VAxL6QHaDyaatPpXI0VjD9LGow
U/QEQLoRQjL5WHC4cq69Oz9RV7o/eag2IbY7jvFUfprFVveFAq6VapYJYyxLwRK3ISCeQ3J1yJ/7
/ILYwHdQjFP99aMxQLMM/lENjTRtJmcAj1MxypDDYXIedea4ksyFeeNhlKCcRPGORYC1C9hI/otw
JyuUxM+sVZfpUr6BB+ogSMrIaTK/NRwAXIELvQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 27248)
`pragma protect data_block
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
ILA=
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
