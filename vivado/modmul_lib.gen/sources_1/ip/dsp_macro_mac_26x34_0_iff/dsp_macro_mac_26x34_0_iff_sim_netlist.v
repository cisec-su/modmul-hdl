// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Sun Aug 18 11:20:21 2024
// Host        : toluntosun-Ubuntu running 64-bit Ubuntu 23.10
// Command     : write_verilog -force -mode funcsim
//               /home/toluntosun/Desktop/PhD/fpga_acceleration/karatsuba_dsp/karatsuba_dsp.gen/sources_1/ip/dsp_macro_mac_26x34_0_iff/dsp_macro_mac_26x34_0_iff_sim_netlist.v
// Design      : dsp_macro_mac_26x34_0_iff
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu280-fsvh2892-2L-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dsp_macro_mac_26x34_0_iff,dsp_macro_v1_0_3,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dsp_macro_v1_0_3,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module dsp_macro_mac_26x34_0_iff
   (CLK,
    CARRYIN,
    A,
    B,
    C,
    PCOUT,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:pcout_intf:carrycascout_intf:carryout_intf:bcout_intf:acout_intf:concat_intf:d_intf:c_intf:b_intf:a_intf:bcin_intf:acin_intf:pcin_intf:carryin_intf:carrycascin_intf:sel_intf, ASSOCIATED_RESET SCLR:SCLRD:SCLRA:SCLRB:SCLRCONCAT:SCLRC:SCLRM:SCLRP:SCLRSEL, ASSOCIATED_CLKEN CE:CED:CED1:CED2:CED3:CEA:CEA1:CEA2:CEA3:CEA4:CEB:CEB1:CEB2:CEB3:CEB4:CECONCAT:CECONCAT3:CECONCAT4:CECONCAT5:CEC:CEC1:CEC2:CEC3:CEC4:CEC5:CEM:CEP:CESEL:CESEL1:CESEL2:CESEL3:CESEL4:CESEL5, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 carryin_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME carryin_intf, LAYERED_METADATA undef" *) input CARRYIN;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [26:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [17:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 c_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME c_intf, LAYERED_METADATA undef" *) input [47:0]C;
  (* x_interface_info = "xilinx.com:signal:data:1.0 pcout_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME pcout_intf, LAYERED_METADATA undef" *) output [47:0]PCOUT;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [47:0]P;

  wire [26:0]A;
  wire [17:0]B;
  wire [47:0]C;
  wire CARRYIN;
  wire CLK;
  wire [47:0]P;
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
  (* C_OPMODES = "000010011011010100000000" *) 
  (* C_P_LSB = "0" *) 
  (* C_P_MSB = "47" *) 
  (* C_REG_CONFIG = "00000000000000000011100010010100" *) 
  (* C_SEL_WIDTH = "0" *) 
  (* C_SQUARE_FCN = "0" *) 
  (* C_TEST_CORE = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "virtexuplusHBM" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  dsp_macro_mac_26x34_0_iff_dsp_macro_v1_0_3 U0
       (.A(A),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_U0_ACOUT_UNCONNECTED[29:0]),
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
Z6yiZMXOtCYkb1jHIMT1i6DLzDBS47WlsiQa+4ZLtrUtdhYz2P/9f0nxRDex0m3u31aWJDTaZj74
7QbRHknP2eiD6gpa1igio84oZzSGIcAo44s3L2fw6a/CFtt3N8H9VljhN9dS2HHqH8rbeqZWXumy
j2E4nbznFHFgmpKlZ8Sl2ZEs+nXkOPEgwOlcQ5r5fQq8UkX0TJ2xLFqC+jcrd4HJnCNacBsCyvEx
XOvbhbnMeopsiJIoR0WlDuVpG1dcVKKi1nOX2a5Vk+JczF58N3ugoHEE2wP5oVMRKvKzZ5K856A0
J3Vt7BcOAdyC6SMqZ5hVFHA9WhkBZur4xEffdQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Nt6TcWhWsu8nsQq8w4SDE+l8hZf2sGnO+Fnu3zNMarkcI5Q5pwcsDby6Scr92PpOqHRzznaoaGi1
T4JUNOSk7Z5CCrZwq4kxpK0s9dqLTCYfisADqLsmFDg1luIlQBkokgSx7lMGbx8waYx/2jmL3aCN
vGMxciPka+ZJi77XBFOu49IYR7zsU0ExRSikQs6Mm7C36dhFgsiPx70FkvuJ3SoBxtTyqz98vE4v
I2E6+Jc8wOh1En4LQboVuEY8xDh3WvhbBfKZF4yRfovP0h1vCZ4eozU5BDMz9Lq+jYyxqqCX3j4S
LviPZ2K7scSPoqFEm5dSV7J3ZVwcGdYEH6HOcQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 31520)
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
