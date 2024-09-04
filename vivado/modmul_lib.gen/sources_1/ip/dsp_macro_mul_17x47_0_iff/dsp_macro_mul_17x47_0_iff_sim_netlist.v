// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Wed Sep  4 17:18:29 2024
// Host        : toluntosun-Ubuntu running 64-bit Ubuntu 23.10
// Command     : write_verilog -force -mode funcsim
//               /home/toluntosun/Desktop/PhD/fpga_acceleration/modmul_git/vivado/modmul_lib.gen/sources_1/ip/dsp_macro_mul_17x47_0_iff/dsp_macro_mul_17x47_0_iff_sim_netlist.v
// Design      : dsp_macro_mul_17x47_0_iff
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu280-fsvh2892-2L-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dsp_macro_mul_17x47_0_iff,dsp_macro_v1_0_3,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dsp_macro_v1_0_3,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module dsp_macro_mul_17x47_0_iff
   (CLK,
    CARRYIN,
    A,
    B,
    C,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:pcout_intf:carrycascout_intf:carryout_intf:bcout_intf:acout_intf:concat_intf:d_intf:c_intf:b_intf:a_intf:bcin_intf:acin_intf:pcin_intf:carryin_intf:carrycascin_intf:sel_intf, ASSOCIATED_RESET SCLR:SCLRD:SCLRA:SCLRB:SCLRCONCAT:SCLRC:SCLRM:SCLRP:SCLRSEL, ASSOCIATED_CLKEN CE:CED:CED1:CED2:CED3:CEA:CEA1:CEA2:CEA3:CEA4:CEB:CEB1:CEB2:CEB3:CEB4:CECONCAT:CECONCAT3:CECONCAT4:CECONCAT5:CEC:CEC1:CEC2:CEC3:CEC4:CEC5:CEM:CEP:CESEL:CESEL1:CESEL2:CESEL3:CESEL4:CESEL5, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 carryin_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME carryin_intf, LAYERED_METADATA undef" *) input CARRYIN;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [24:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [17:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 c_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME c_intf, LAYERED_METADATA undef" *) input [47:0]C;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [47:0]P;

  wire [24:0]A;
  wire [17:0]B;
  wire [47:0]C;
  wire CARRYIN;
  wire CLK;
  wire [47:0]P;
  wire NLW_U0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_U0_CARRYOUT_UNCONNECTED;
  wire [29:0]NLW_U0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_U0_BCOUT_UNCONNECTED;
  wire [47:0]NLW_U0_PCOUT_UNCONNECTED;

  (* C_A_WIDTH = "25" *) 
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
  (* C_OPMODES = "000010011000010100000000" *) 
  (* C_P_LSB = "0" *) 
  (* C_P_MSB = "47" *) 
  (* C_REG_CONFIG = "00000000000000000010100011010100" *) 
  (* C_SEL_WIDTH = "0" *) 
  (* C_SQUARE_FCN = "0" *) 
  (* C_TEST_CORE = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "virtexuplusHBM" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  dsp_macro_mul_17x47_0_iff_dsp_macro_v1_0_3 U0
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
TGBA8Zx6hcvokbIJXeXSjzPmeoyCaTuNUoblQpzoWnZYNVwu5VQu/4THFqWJSqOyRwg8wbWb1zuD
5qMA0V9oaYhALklzG3PgnGuNqh2+L2PV/tlJpxciPpEHhqBYA8srkJpo2GDClXJAu/h3tMYlh99s
Hw+l5Q76YPzs3cfq2IDRUeVLH5FIKnJeRTY2JSpcOzm2GPxPA6+hqCqVPGMz4cSlj9/3r4EX20WW
xITKcufZKzKfjKWF8ZqzywCL2ij4SHaTUwN5lYCXmOqxxH1hQzrMCGjZcEjWj/quxI/UcT5Y4or0
48bFDFKjtlVFexOwzWfZmgbn151boc4xplkMjA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
iM8xxHZh1EP19w/MgTxJwe3wDK4rc6OXXhdmNGaR7BO4t4rX/HXC7n87kTbc3ATqV+kKrdGPTalB
GC2Bo8lVZ3qts6Gihx4Q0gNgJKjBoNhb/NozM4MkTes7ELbkCeYdlMZEvmQbVyg78PlHRYQqcURd
Y1VgIVmSQlvYiMg45EyN+pCksGtLsCoHaly9i6MQorC+whGqjPC9CPGuZhoDI/ZvuykUijhZVjPF
e5zdy4u5eO2Jbl/DtlZQ6OHN2es2123verw1nDEWeNImqfATg87MijVK2nSJo59bAT2Ou/httIvC
pPTHtPGzhvFeOZOjbuEd/EZ0KkuCIYiqG4hWiQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 36672)
`pragma protect data_block
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
ZaUPi0UPCPltBGKuV64LVtDVtAA0
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
