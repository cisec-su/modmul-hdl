// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Wed Sep  4 17:17:10 2024
// Host        : toluntosun-Ubuntu running 64-bit Ubuntu 23.10
// Command     : write_verilog -force -mode funcsim
//               /home/toluntosun/Desktop/PhD/fpga_acceleration/modmul_git/vivado/modmul_lib.gen/sources_1/ip/dsp_macro_karatsuba_34x43_2_s0ff/dsp_macro_karatsuba_34x43_2_s0ff_sim_netlist.v
// Design      : dsp_macro_karatsuba_34x43_2_s0ff
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu280-fsvh2892-2L-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dsp_macro_karatsuba_34x43_2_s0ff,dsp_macro_v1_0_3,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dsp_macro_v1_0_3,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module dsp_macro_karatsuba_34x43_2_s0ff
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
  (* C_REG_CONFIG = "00000000000011000000000000000100" *) 
  (* C_SEL_WIDTH = "0" *) 
  (* C_SQUARE_FCN = "0" *) 
  (* C_TEST_CORE = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "virtexuplusHBM" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  dsp_macro_karatsuba_34x43_2_s0ff_dsp_macro_v1_0_3 U0
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
VFYfMN1mGcgwxRPxyhaSoqhKmVJdU2/LjYhBHI4BqHfP8JDOakdRqWWVVSPrJZyHzH8ZFrDWSPFb
ed3SoU4nzzuu1PRVqcC2fNDDAoNZAdypeaYv3tTJaka8Ya9HaCV1cW3fiVfAl69NvHG2dNzE/FnY
cMI1xM27flC4++i6gE7pQnHonO9csLO+JXSbyYiqSPsUZLwyA/O+PKG6hSSe2OFd6dlr+aA4WUzG
xuLWz7FDJy/uUTzNwlbQ5cYy7H3xt4RMmpEfY37L5mTCsqW49IZfh2mGw5zpDqYF9kiekU7yvXqh
rXm1FHU0glgjs6IbGOs/PMHYO93IG9RoKH+Crg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
AYkXbgf2EDn7qr+cY7X9dLtiO1fpCWQdMXmkWQ4ilI3SHy+zd+mG0WklwUtQ7dY6F+69enBaI2Se
7Vp8RV/OQVjfFsN7/z9Y3Hxs9Ttol2fuo8vI9ouHc7LmLgOhvJ+6NmkncYYrU3gXjyYx/zNye+2s
y6RAMI2Sz5uUTv9nxtZZ5hfSDTOg6tAcZfa3/s3toyVj+mNpsPu2vgqGSUbCXCrqoYQ/wqgrUyPe
fIWW5SmCCUfTxItNWr0pLJfumd4lDqqE8nGDS9h1eAcKsW5A7bGA+JYfITpsp0Cxyup3NXpA0AXy
olBcTxbZtBQYMpmFgrzNANPIg6vp8znTYGpdqw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 22256)
`pragma protect data_block
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
puVXzliUWN7puIWYQAvcD1t7RuspIG0fR74=
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
