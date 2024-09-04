// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Wed Sep  4 17:18:29 2024
// Host        : toluntosun-Ubuntu running 64-bit Ubuntu 23.10
// Command     : write_verilog -force -mode funcsim
//               /home/toluntosun/Desktop/PhD/fpga_acceleration/modmul_git/vivado/modmul_lib.gen/sources_1/ip/dsp_macro_karatsuba_34x43_2_iffs0ff/dsp_macro_karatsuba_34x43_2_iffs0ff_sim_netlist.v
// Design      : dsp_macro_karatsuba_34x43_2_iffs0ff
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu280-fsvh2892-2L-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dsp_macro_karatsuba_34x43_2_iffs0ff,dsp_macro_v1_0_3,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dsp_macro_v1_0_3,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module dsp_macro_karatsuba_34x43_2_iffs0ff
   (CLK,
    A,
    B,
    PCOUT,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:pcout_intf:carrycascout_intf:carryout_intf:bcout_intf:acout_intf:concat_intf:d_intf:c_intf:b_intf:a_intf:bcin_intf:acin_intf:pcin_intf:carryin_intf:carrycascin_intf:sel_intf, ASSOCIATED_RESET SCLR:SCLRD:SCLRA:SCLRB:SCLRCONCAT:SCLRC:SCLRM:SCLRP:SCLRSEL, ASSOCIATED_CLKEN CE:CED:CED1:CED2:CED3:CEA:CEA1:CEA2:CEA3:CEA4:CEB:CEB1:CEB2:CEB3:CEB4:CECONCAT:CECONCAT3:CECONCAT4:CECONCAT5:CEC:CEC1:CEC2:CEC3:CEC4:CEC5:CEM:CEP:CESEL:CESEL1:CESEL2:CESEL3:CESEL4:CESEL5, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [17:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [17:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 pcout_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME pcout_intf, LAYERED_METADATA undef" *) output [47:0]PCOUT;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [35:0]P;

  wire [17:0]A;
  wire [17:0]B;
  wire CLK;
  wire [35:0]P;
  wire [47:0]PCOUT;
  wire NLW_U0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_U0_CARRYOUT_UNCONNECTED;
  wire [29:0]NLW_U0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_U0_BCOUT_UNCONNECTED;

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
  (* C_P_MSB = "35" *) 
  (* C_REG_CONFIG = "00000000000011000011000000000100" *) 
  (* C_SEL_WIDTH = "0" *) 
  (* C_SQUARE_FCN = "0" *) 
  (* C_TEST_CORE = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "virtexuplusHBM" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  dsp_macro_karatsuba_34x43_2_iffs0ff_dsp_macro_v1_0_3 U0
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
Zl3giSiNwz/nCUCrw9EsBa5I3fQk6PSSMm99LDIKvwi2QXkjTLO/FgRcqdx6Zx2suh74kO/R3pat
feI2L1LJfse0vVR/jQfEepD0jHcnmoXNPDBfdFAUBJ3G/Gyswzw5GkqJYprXCuMdtHd4EJeImHGE
DTaCye45sxUR9mfAmfARR//oSH2sxjN52rb0QWxAPZeMuhaP8hqJbR+Ob4WhvstQ/775sKqhINop
D47NY6eDfacr5STOCFo+R4tMFbLBn2fJv1rGPWDEzradMMnq+jM3xk813o2bDOWZv1Bo7AYe6qYk
wWLdFk/rarWDSJk2KCbgZM28A9VAiCX4sl3bIw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
RE7cyRyAq7XzdKwe2E5F7kx1Ok25wiYMSBogD/0QzqLLcyeuLuQP+o3kB+ikySI5fNKY/IPws8KC
k8B/xHdc2uPAvh3nHJv3jb+LwP8AGpZ+XZsPFmtvmZjXb9M6JqpEKBqM1K+yOOaN4sDF+28p4/d2
4GJa6dcpKvLptWSSRnx9LzCpcVJI7Mx5zQH6cTqN71+FSqsZGhD+D8DEGhksA70zzJc7hDsBJSBd
SsH0M2Oivm+1yepr1NlcKbleWSk33XVmfQGtWT23zLutV3ZNd+ykO2h1He8U3HTgRP7R7hqP3q+a
0gYv6Irm0XXxaAq/Oql6y2oaTltcWriMwSZGVw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 22288)
`pragma protect data_block
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
lQ==
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
