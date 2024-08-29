// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Wed Aug  7 11:10:44 2024
// Host        : toluntosun-Ubuntu running 64-bit Ubuntu 23.10
// Command     : write_verilog -force -mode funcsim
//               /home/toluntosun/Desktop/PhD/fpga_acceleration/karatsuba_dsp/karatsuba_dsp.gen/sources_1/ip/dsp_macro_karatsuba_34x43_1_s0ff/dsp_macro_karatsuba_34x43_1_s0ff_sim_netlist.v
// Design      : dsp_macro_karatsuba_34x43_1_s0ff
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu280-fsvh2892-2L-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dsp_macro_karatsuba_34x43_1_s0ff,dsp_macro_v1_0_3,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dsp_macro_v1_0_3,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module dsp_macro_karatsuba_34x43_1_s0ff
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
  (* C_REG_CONFIG = "00000000000011000000000000000100" *) 
  (* C_SEL_WIDTH = "0" *) 
  (* C_SQUARE_FCN = "0" *) 
  (* C_TEST_CORE = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "virtexuplusHBM" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  dsp_macro_karatsuba_34x43_1_s0ff_dsp_macro_v1_0_3 U0
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
ZO2IpOcunVngzyJXoz+l+9bk4DW14Ix+GQdakzTg+CEpD23/2hZR//xyG8+SCHn/Nc/CP325F/Je
LyMpArd9ndI7aoJfWvLE/6uO1ywccxhzGUR9ke5ul/qS+2FSwegmZoe28ZU65MNJn761Hddwa1V2
MRry6rqO9K7SmQH7heR8Hb8d2vpCSVcxog0mAB5+3QaPRBX9VhpjcXeseWabZidsxnzpYtXem0l4
VbkXzHxE+eeYPS9dR85HDO4gSGWGCcBheRSTWUbOWxuI+4cdZkA6cQNsGAMtSVKN1n6byHnB2jJW
zIOwMIgm8h/zKY3T/+Daq9WNmwsfFHtasohbUA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
BRTm54EQrm7pkKhI/lCGjgD4rC28TMVCaIfSqZPlK2l3A9P+BavkoLp9JUN4d6y0Qy0GUwzdhDe1
M8UMlqAzIV1+3Hxj1iFthU5k0FuhY6mG1B62iT4EeQqHb7mpZ+t9XwbXJWXFnZ6ScWm9osxbGKBj
xBvCVPWhkGpHE/uCBU+TivNXjseyGnlZKzyrymselZoGZarl8hjDwXwDI3f61Z7F+O8hzGjWrHqv
yvZYfdfdKmK2/87rKJ0FDXsLbZs7X6AYFZlw2UWVdyYbcZuEtmke6SwOQ/qhiG31PY7dTr5qNtaq
ykAkqijuQS8t+ol01FIH77LcWg7GWHDdep/PJA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 21824)
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
