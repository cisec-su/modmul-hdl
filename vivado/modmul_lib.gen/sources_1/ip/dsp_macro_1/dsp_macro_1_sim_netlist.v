// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Wed Sep  4 17:17:11 2024
// Host        : toluntosun-Ubuntu running 64-bit Ubuntu 23.10
// Command     : write_verilog -force -mode funcsim
//               /home/toluntosun/Desktop/PhD/fpga_acceleration/modmul_git/vivado/modmul_lib.gen/sources_1/ip/dsp_macro_1/dsp_macro_1_sim_netlist.v
// Design      : dsp_macro_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu280-fsvh2892-2L-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dsp_macro_1,dsp_macro_v1_0_3,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dsp_macro_v1_0_3,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module dsp_macro_1
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
  (* C_REG_CONFIG = "00000000000000000000000000000100" *) 
  (* C_SEL_WIDTH = "0" *) 
  (* C_SQUARE_FCN = "0" *) 
  (* C_TEST_CORE = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "virtexuplusHBM" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  dsp_macro_1_dsp_macro_v1_0_3 U0
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
S+h7v6fN2mSlC5anFuVp5Pfd09vrf6be1du2c4Oloja9VNCbyQmcL04lq2MFDuYt4aEi+q8sFgZM
8qPkqnVJ7dtJOZrx1/pOJSYsdyF+bGlleGCBCy7OcIxKDCBDue4C9S0xWF9uOZ325lW+sKQxD0tw
FL2+xIrfnAMur4g1lMAI8TYs5S/onNiFzz4c2iCfeAAVk/HjiEFWEccaGUkI0jv6XpBvSgjZm3MZ
JFGgxdCqtJ6PXgoCxjfLnZKElbJULLNIgzUtUtlpEj6VtCouDXNC44muvmGUD1Vgo6X63X4XVBFT
mkmcST6pGonSIISrRhlhoALpOQCKfbNKPObZ6A==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
KadojqQ6zAkvStNQFIQZ4M2kBYllTxzGRNrCTsKuYWyIx72H2QgbfbWT2DkTostRph3UcONSNWDK
8Q97e2imfzWrqRAOyupXMDNqCJ5Sgna+IiirhELlnrCTF6r49HfRJxtZKqri9uaM3Lo2onxjDkz4
2qrjh906r3r59gwl/G+VCIQbpLtuzvURVvpbZL5TPasW2dMlP8VbqcJ3f/2+4399/qRrszdK3Ujm
Qk9pQlALaoKeZMh20Z/9H+vf/tOVaPV46LNwLIgKmyc4uFRGri7wbnmdmxEAFq51Cl2qgL04VFCD
YhqJm2rOc9GezX2pNBBSZwWaCYbgNk0JV08DyA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 21744)
`pragma protect data_block
aGECpcTSh1QhhkrHGTTT8L0iQWnpxBaLm/HcPRpQ36lFtUOQVqhQgvgrDM7EOXLi84DFZC9+gyQj
oy1kc+swHOzvb1GvUPNGtdcwcVV0A2TmEfmkn7VLZ5EETkW99MR+5ouwuy8vZ+5VCoj2BKNEJKKR
SCSX56iNJpdPJkyTJx8Br0RjaaAVVivlceWDRcGhWiYJfL0ex33VeO4l/4vWR17p4j3ykCy+DMEF
mbxO6avyk/ZD6xa+AitV3BCb0JTJNOzien8kSr6J5J3ZTAKAXuCqTp9uf5VLCv2I2a7QypbaMC1Q
lblNvaZSQ7WXa3ftnJ+VN4GAlE1mr3VBwqB6qK7Uc1R82jPv3ZLwawcccCBQBl0gO256wtop91vS
/+Uu8MSVL5uCRWdbOw82/bDcJsbF8pMc9MfSaZi9D8sG8hwSMgUDP2EOJJ1k6EffyTg3wINSGFZZ
Qtwjve6rbCkFCnr6UHwWJIjmhrX3qNASNpYRs30YfePJ2CXANVoZWNbtof2cqBF8/uGxl4wMlLNr
DCLVyCC4g0cFop5EzpNtUzNVRrNmUhKuOF6P8zWWNVGGb2D3SQIrV++Qgi6BZoJbV98TiDiPq6LD
kIPzGMlxueVAa0SfKJbMSsCwzaAhdKMWkjrrAFjhnjK5VssQMVQ5q+z7xtLkSIQrvmB1JtV8aFfM
0JRpzM0e43xZFFd+QlonMc65HlWG9vQPuIkD0aHXKhJoHCyCdxVoSLrCDiMswnhzdwvbxMF++ecL
ypSLAsKEIfLuYwiSkwHgNXdjB4xPifDISZe7Z0xCnY/MH2fOwLiyjYLVvIJQOHE7qu818nTuPe63
hVWUsiiDdRPC+axYQEeDp4/jsV4c2mWjl+HhEQB7kpOr3PGmRipULKUQJDLU2tpBEoDFP5UX+LK2
O18oUfx8UEZRqLesvBWIqItQGnWlt5e7jI/Kcmdnz2P8f4tB4aJ1m4Ua7ehZhYmurKROGNbAkLBZ
hpuTZssYbgv86f1oMEWDghX3Ux0Dg7nUDLlFFXG8u7UmGmaNGodTenh7O+vRi6vy6rdbbzsIYcF3
nEy6HNi12sf4UKIYaZ+y0UMkLOSHK6hztLXm5XJPojt4mS9ULLdn+ZINQPO1SZgKn2ucc2iCedFN
OgyQLjnI+ILqJUorPKBoqcwKjPqvrNwo+gHht6d4bQ5/OwlP1++I5BIlNgtjsjCkObJZICbDVkTn
kuRNJwKJq55Lu0GXMWEZnmyVYDHf/R7yTpFWffpineUa1qW3d3frXx024rwsoI9OF4KEOcs/6oMi
zniG9WamsGey75xowuY7MuD43GM2bOjXSnQRCXs+BkrMeUVqS4XkyWZi83534Bm8/RC62cg4sKUu
AgebD4Ja2IU5W0+NqsneBaP6d/yI9gzez+Co4AR3h1HEMUcGQZ5VG5riqJJesZ9ZsJ7r40T9V2NZ
pL1kmG9Pb8ADTydtwrdF/mActb4sxnOXHIv5RG6mM0jZN5pxXN/1ZIdWyQ1f/+4gFz88KVehe8g2
o+tw6ObD3+qJitKppiTo+Jr/uFMltK8uOT6JMCxZD5IxP39BLQrAGWkuXY7VaxKiU0X2wVAWQ6dU
9sUDc958hIAwyFR9Wfv9uzfQ9mJpeUzUcUm13vCBdt/X9MRGs2MXjcxnG2mVYCHShPHnHew3hLOa
McSLrC0jNPu2kr9gNEIrRZKy+rGZ/nJnFFidQ0GPIkY0YWrlda9pNkMirVELz2T2VVU8XQK6C/XZ
Qh6Q06qAtARSzT0xMQj7fP1ZmuF8gpdAUOjenIbV2hzWdO0DwTkLJ+xweo5xRFAeiwmuQIvJcOAG
Y75r5d/MYcWXYe0tvxWoae0lr6HXKTnKiurjI9vwKVxSB/+3KA4koFgEbfoezKzuwJULh1L6WIa9
ycS18yhz7lXSo6i1iLJ/na4NaOzBkbb4WY2FmHcD1BD5n3P9Tc8XtbFf7zDEa7qHF1oqlT4s4PW0
+98F/L/nZs3QDGSX1xToMl4XpVaGJ5TB2BnOlaZ6HmphnjXIzh/juQ/xAgfVSFuEkOcJyUyjKvD6
caEaL5lvU/fE2Y7u4JgfbeAUV4tUS279gf58S0IxAXUaGI3wVQ+6+HbRAsanL64se8IJHkzQy9OF
Pvu5YQ5wbiojqWw4bVWnye+4GQCQy4vF8XVZfvQW2r3+TwaJkbt2Ibb6tE0k/jFSWIY6WCkPqVFr
W6HSBKNYU5QGYVtXI9N+88en0PXziVJwWVikM4RLp+heKdCFYQ4fkcFBzO1k9ueTxC11gmlup9IC
0g/DfPrBI8y5Kx6r8x4MtJfSmlcx0gYBiXHOIRwIlMIeCyRyC6tQLQzeWi2AqzKFTx5/kW4fDcdG
RCZdoJW3EKIQUsmu7E5AwBk6pCk6DWQiZCC9p0Sy7JQ1GEUVLsmBIiEoI9lEs3GFXvdbSRvutOGD
y68+RZuwRRg019A3JNETib6Aay3n0OQQfeyktfGTEN48mo/coBYEseydF19+260c+/shR7k510dS
w2Yx5NmMIftkUPgz9RFU3KOk5eIwfXu2O0WSSP5w8FzxOBMqQzTXsOrocnAoXBgxW90PHPLoVTAL
F+Yd6lfCu4fHf6Nmg4DtFa0NMVulOegsfGh+fdJgi/rwR3/7hvp8TabEUzkrsif54wLCnIwmPvnw
Yaua11X2OSmZpTv0fuyiEfUrQG/ysR2Azj1h0ssPoOcGPNN+Lnxm3IELEHHWB7sfnNuMoF2BNPJK
DI4/MX09WgogjMx7lqqqF8FyWXg4QcBy3FlS5fqSShLCmaNjpmncUucGSZ7GRVmASEpL+tig6U24
CAB4IZno3iBCXULA0zJsiNzkBIkFgDYUZzEJTtL+gii0qZe3vxi9ogzyict1hmtekCmlIviunZRo
Z74IQC2vSp1pR99QMmI3paPZ0/V2ugoyefzbxMuGKbFBGo1L7dFxgIQZAqQxBBXDId9W4Ql78tiU
be+17nMQ4AhB6w5j7milmMksjJE0VkvvznJ0N9PiZTpkViTHAkuG5u4PVw/8hqZA3ATlkBSKsPk/
2o36BwIcWJPMuO5dr1V0Q17Wom9Jmt5j6QdgKVwBI7VQgqdoUBMp/+YNEAufV8NaLeOl/VuuXcz5
Ws0R89iQBUZfAcqug5aJwEkj84vxcfH6I5CWISH8tE++KGkqWQj9ZInhLo/eO4tbrRne5putIRW+
RyS6v8W9MPJFN0rfmVDxFi3EG/9zyBfedFNwTA02t/dp5IeyXdYRKlOqa9xtqgHwwePG1+Go/hGo
LWrTQYke5jLiZ1+rMszae+IcRen8kSFcvKzkEDcRekDe5jIm7YnkJnVi2fQGrkRKJEqc1QFkVH8p
1wT27iPGMAidFPjPvAl35UlwSQARbK+bHFRR/OBDN7gn/AkcfZ49qKmMPyDn/JWKZQwSZ/ndgofq
e2ZssXyLwZ5+22KcGpvYpANMuBhpFBV3c6rN6S+L4VPu0WnZA2dWUOJZutzioV8Q1aqG9TDonigd
lX0JItruYrvV63ChPcI6SOJ+0hEEZVVR02Tt2LuDx+80XqdxCGM5nKyhLkjp9bub0lCGbrGcKXeo
BZtx2YqalFWOCTKoNPmJV7epCwua5lVyiClN8Y+EkWl6cKcfolvWrI8ivai2CkYx1ll8xiHUHMJ8
zUwcmgkIzKd3Hzcik4jtgHWLDc8fIKPT82hdxb/pH7FCDqYY8cyOrJOFeIgvPzrHE1JsZX9/L1gU
m33oRvU1HBYbZixdPorGJY1biJIduTwK1CTpIYpWzt6MUfWrrvU+GnJdeqyFSWVo6bHnfqmzk72g
NJQ6+Sw1utEJqPYoqlxmOhBKtMcge2XI55ssZwaEC2DPQT6OPArxTMhlGNAM2Z6A+2X3rOHNyNJv
LPf6MkbYI3n5dKrB9v2A1jTgzMzLLRi2oBXFwQTnab5UZraBF7lSpswW3VHhGByaOqNC01139lr5
PPIc0N+5TEodBJ6RhHORZqBahvQ6UYg2xzYwnzfQYkSZoEpWgg1G9M1SZ/1QTHOfoFY/Z9axST+y
PiB7Zht1KCPhPB7g7Ih9Ho7QZYbMVFIrt7j9+GZoEd1u9qsAig52K38tBtt3Xn3tB4ole2JFAMJq
WpKxRvAYUYn1zZ1O2b7nlAz+QS9DILKRQmhCwtrrVjtBuQRSwcCGbuisQQuI3pO8jz7yAcNZlRdR
HPspUk85vQPH/SpQ5LAliORhXPpm3krd8BGncbcPU/Vd84lqF2n4S3/TKTPXslV5HwZZa3q/NIt4
mBoUOSlPkqQ6veEN2bZTsg/Mkez7OM+8FOe1C98Yo/M4TCmt+vDpTR676ElurYnYFnBa4ZsUwqm8
Rxkc/qwzwwVrTJhwYdYLeqt8phEWpeQ3pThqqTU1ccutwiOTrOYfxK1bXpUHaQOg0dhCaXb3kqXr
wbxhe9vjvtNw5Akn9V80imhU1w2aogdHgQWtjceGtyH/I7QMzIDWAQuqnZ+Q/Gn+FRoDgj6bZjOC
vOq2W3b4WkJJlqBaNstfLNhjtdKajKo8TdOD8JnhsHTsxPYPIoqDl9Cc8nBFNwLc3bwPNOoADYnR
283DYQz8O8o34atfxg5pjj+phhojMxImiT71cuud+I93Q1u3gNY3HXe2ao0N9mnGsFW9mZ8pRfZG
N+cyBm3EtewBpSxpHJLyIv7YVRmQubALzKivc1IqR8fE3adJL7i//qtB68GxqbouemTIYQorh/I2
tGOsTe6gTQd8Qp70CAEYXYLCHTvL1I7/QbWLuytyDxS94SGe2RWDxShQrjuHSlkivcLJXq4f0MXC
49kkWxvd1Sjg6py20mpiDuqj0qHlgD9zg4pTsH7QlACqHuqpA5jE9LNfQUEFel8ii3FSVaOPUJyG
TiJp2XNiB9bv0O5DB/Zh6F/F2oGJc9x4DxCBn1+U5wbp8mth0hlDUUmJ/swgYkBdkbBySQ9S4Wkl
5qNgNC5UWXWY69Cj3ULCK6zw0MIGiXY11fXONhA9+/i6lJXVjGHsOGwMcGw6qag4ZGJ2WijhW8Wm
rscKrKFmDpIjZbVUibHKSEGfwCaboGFUvAcXK6TNgDnFBWHzlBV1oGCkwbpe8QsxDwxpz61yUarB
0mDKqtYwm8RKhmI+a2BTTmFqA4z32LTtAM9E7qOKZTwQ8LNDU8XYpis+gQGi2WbKZzgU1iM9pbdY
+m5CbzvlQCzz6uUV/83og23WCPqru86kCngnszRZ4YyPVKbtAKVdvdtu6I6mbEyivXbd7v/xedYc
GcE2xk5iMtt0S1eINyrlVc/z288kb0T6M40HG2DYzQfAwquilSYpK/YuzDpcb1SZdJDGLHRrfiie
tqxC6lNvsKNjp5mqkEuPwmvxcj9l8zlJn/fAKTuFCvMnW5o1W/KclJyMGDBlB5EFSRqtprFN8lBQ
nXwQuGqywwMXzcOARw6/3OHL+GdHuc5JEPOgZQnB1nBXfgZmAKXatKosqa7dz7Zq3BbgozVy06NR
pRrwFRZsEa4YSOBTy7IW/5sjBh/pELc6dQBuDk67L957Z2hVnyfWpK53p+xZMXWTSQbmdM0TPFjg
0NaYV73gHA0dCKqY8AdiEeHKm2BIUR5gP3e494TAgYdTCFWuJkSmAqanmTa9mPZcWyAYSf3iCUFc
RKgMzwFvSVfppqjjlpsu9oHH7fcT4dqaM7oW2vr4nWfgysUphhuTSPLCnDey8OG5cBRbY4ZujLVr
QBVv/Tz8ZOPJYZQTBa9wuivCupnAR2/45DQLZcMtLtkz7j88YQf2V0hXSR8jfhQqXt2nsu/CGI18
WI/GtiImoU5n5R+hQXwwA+o1tTDs2yKDe21Pt/jFzmWJOz7qTjkdMh/6XmG20mEUcf3/Fp/OnyWg
prGikulLey30JWeUUAbDQBR8//oG/6dYwZyPWCHlACHsba/vSB/qOWOHxYbOQboHQOl3rHvNFUkS
OevLdO4SXPXGOMYSEUbrU/UzubEG7LDP1zdcvllsWeExMaMyuWbxAIMFsJDKEMhpZlsiQi0Zw7hC
sneX4kFlcP8wKkWuxODrq5iBLXv5B4g2UVzHTPoJl609TyjgcIGSohGC6U7lETD812AnFZWJQaEA
y/rA8BpbXewZV/qyN8vVJ3osaLoH9LqaYNgEM2VecsgNs5oOPKlAS59fHbggdrS18OFUZ1TVwRn/
IW817czg1LlUBhRexi0vn9Il6U7ni2HvsIKkR83Y/4KM4/CHyN/vO+Fw96slxSPPfSE4CBJht4T6
TjP0vCabXlhFkvs8u7VHbv/2rnoTpYFPyc+ISC0tKScidFqh2b2baFGdlAGQ7+p3TbkvxiWBoWWc
lLWObiNJBN4bAmXHxc4FE8CECLlHeh7bFjGUrQlUp2V182JpUJb8yOZcbPwYue9XMvuP16/9RaQn
gWgbT6G1l2dxHls775+npm7zge5fRy3BzsoD2QPfSmYW/of3JqRgAVOGFWWD7NiDpeW4bswxnK8l
kWjEhjHqRQdzQ2t7EJsE6+KmMPr2bvPoBClv/e5JrIoCKWhLFrb+L0KidT3o2SOnsjLlrOsr2gmE
68Z7RGAQQtzR7botOCnVWRt5T4urvQ9m9rUsDx3Cv/WFS5lLSaQPWJWdlDoKmBB642dq8iv0AIek
DiMqdMP7g8Oa+aXIXhVvIWEkc5eemxQzB8XczVE3kwOV5VCN2pIK2FgziFSTMGyERhrAlJFjE41N
TqjTKbope1ApZaPU+Of9xNUuBF2NxRVekBjqOpWOM9ezEcPFeTpEqsUGwISApHgeF1Fvsv7WraR0
2UMmsRiR5yyPRIer63F0yQeuWY0u6hRHD3a4P2PBLkGao/FaGG4uB+bmyAWphp74Kl7NBTCuLezN
QUg2Lz70hOPQNfDvzbez+bMROdbLHL9UoU/KDXUAyygVx60PHDx/ZFI3tMvGs0+fuemejdLReTB7
UYOT4QfHwmNgOLhVhacZxKic3r9RmlFYUEEY0dr391EZ7qRuPhWBe8tL/LS8/sAkUiHs0WUWpN8y
RfkDGn006bel05hOPFz2rJ0FQIDs+qyx0TC6eanGXhn51tZNoOQzz2/VwF18f3ETX0h+lzbUltVh
IeinI3Z4zLf4pAPPEMlL1og9Qvl8vHRNvqBCBpGMk/6POejRqlZSqh0+tCNz1FfGRIX+hIhxkZjW
fxTsntzYGbt17P3y0YQqQ5Fm7yRfVjtump7uTBZdgTX/D5ycz3XuELeNHtR6gSrhxgU399r85RrK
ntzzrLNyJo4zuMMjT5xAF8EVI592ItxbCn6eRxbsRvx+qQPcDA1MWfgh06jnBwL9ndTw2HvL24ab
CVoSqdBNFh03XEeTxBu8oYkzgWWpf2HuDZURXCgmk3FtlB9ZfKhiSzRclXolGWNrvKWm5OpJ/pD6
PdEniU3JO4cnZlDvlWJF10LIf+YvZSyzxqcHugFFhWvzV//3b8XPNXt5gZNIC6MLL4ftd5tkdK7z
deHWvMTlbvnDiDQgE+vI9pgyLvNG5n5XMqdZud+Mp22il2X39OczLcp9/k58bhcZuglFRUHN0pmg
B8176iWnsuJMdowpJGdo4OwzkmzfBkK/dQjtB92A+mJ1puGzFIoECYQvFft3Q++O1HuZqvYM7hsB
fhSIxF99mMBUzSsQuNKhRXPCnbqKWbQyaj3SpUJOttaznB2M3g89O08g58uCKJfuSBxyvcnlnqTu
stVqxeo0ozijg0ATu5IQjtbeYFtLTCUC+fdNRJBeSKr5kT04/3RruBy+sbJxWqoBdLDvwJwVhoIK
PvjFiUaDoex7obWr5/AYEVaJvqCXtHS8uZQpmFDg3OgUgSi1dyRzQAs/lLLS8B81hOa2QBVnHPNs
Hb1XtAgn/ZpsI3/qCeI/3cwGtLrKC0rImuzvnQNh9P+JSDNEynZhRYjc2ETxcgRXUWEW3TOKlv5B
n2M7jjeKPQ70rIg80EYiZpsnznPre5bCAxzwTbn3Kr5aJHZ08/EGe3iLPL4dSSrzprx91tgpnIQw
pXU2LDoqReOXw9b/tmYDrebV5TBZGw+4lyv81XkznWmlbJvr7/Ap0UjyHs22kBDx6z3NKlYm8uPM
jBwVU+wUGQUpc6AH8SNJ8Q/UXSkwSfv9Di1lM6wcCF560ghnqRStq9W0Y8UJ/bSxk21Rc15JDYdX
kOHsFqMQhxn4nmsfpDf8dbS4+U7dhLK6Z7asmWStzrlRW0mTUOHDipPExZdT5PC62kM3JdL3aj7I
WHIunKfXapRYlxgkurNR5pHnMKMSH7rOd7ajLK0V6PRDu8Y+h39JhqXFeoncUem6+rqHKwHGyEIy
hH76V6g1VwxW8uYb7oac/j4MAbG6djKZTXuOWFoeOZno6gPClSI+3LEi0GbQXRxUW9ktDl24gzBY
9y/mqmoLRMld5h38sh969UpwROxTWb4Uo8/c3YHpShNsZFbRlbkbM63QRDuRYO8c7eYw2kqB5hvS
q5Dqz5USW/fq75DaaQcebj5S7DR6GgJOTT7bl6ZF/UQTot6OMR4SPVZ0fd2Y97oOGxwKqAWQH95g
eH3jij/mt6jtN+U3clTYnFxJbU4BW1apJ59AmPfiy5pG9dAsTPZ6h+NX1DKYPXhDKEqW/iTayyDR
Y1lAQHZT2W6brEtlfE6hKjPJxYItIaarIVP4v/Ldn0d8qf1lhD4yuQtmfo+/df0T5F83YC7Jjobe
QnnZg7mQ7qU8GKVmT6gl0XrE7jMOmb9vz25mTtWudY2uO4oQJJwhIJX2CsZWrvIFd6A5O5NbZVn9
STgO93ImHW5qs1+hkIx4I7M6tghXb0kBw1mNT+HZmFRK+6r6C7kd4hig1sBbhjr8yBiOpDdSvriV
xfa2zuQ1IjHep2f5JBMPepc+3g5GKvJVd8zaypOVW7rydH9QyYygHi5+8vygR4onkAXVhRaQjm60
ima9dd5cu4kkCF+id1MLyFoQq/iTfFN2jRI5PpQiG9cRNoOU/pas2/IBZbD1l7AfeRdYCqLNgIyH
zED+AU6MENTZFVF4UNmATS0hGUaIsY8B7bpdo7puItB0JNfePY3HXb2Vk54EYk8Qu0dFAYRpItKO
A9zqvMhS2BCqOIHgKjFtuadpk2s0zVXSwAYEnn8YHeXTR5XO5ZaVEETB48M4NXE3f/Aa6567Hw07
fmoRmMZMAuuJ7NwVVfdonnQW/Ix+2gp5UehgbT2KVN1YQlRjBxqrx29omr8UgWundRDcA6AFIH9R
iHNWxN+H2By+ZbInHD3s4o2LbTBBbu98f34Ux7jTgyMyeEQ3JUS6U+nDoHLK2WkuhPtnLFFPFxz9
NlBnC5LuIh5MHG37Bzh5pEwW2zUvetez5kS6Lnm32piQz4Bx7DQqI6Arzxt6NPwzmKqBmWzoKBgB
c+dpO/8GNvUmPreiv4xaNcjQTjJgUtQbmcn71KDvNdLpE+BLKePrRa8zG1kfkTzslKFl2l82+MWO
lTWOrkrPFQkg4YS7B954EyX+ica86vMgmU8T+gsdvvSBGE4JC4mY8BBxVtke88I2R6zVhSisu75A
V375ow2ObajNEIeTOVb/SkkDqk42jEsCy3DQLTCkB5Y5QXMS2uO6kBKWVW8yM/cY8ucyKd9Ul4L7
sIbK1sN4WSH7OZTzCw+8A8V2S6k2VCPfgonDrqkkmZxtuhbd/IhMkKcPYgXZ2GmZhP4DvvbRDxMz
NxW0kWj9Yz2TM45IJS1G1XyTwbEJ101AVGmlrEvDruxnEvVBOkF0RcKF9eW7hDvYlh+FQ5l4ryw1
6F/3o14tmfEVjuNrrt1RCvp4/3Jf6etLsmxNhMgm9PY42ed6YtY1VEj0tsn2D6NmWq1c4cnjvg5p
Oc3sOF855hYAgyS5xmiLiZL09QXYoWMX0U59vd2/6ZtAolVnJh77MzMxKU11lrcolxI3XmA8WDdP
2fAcOKaNP1odBlNn27GA5de0Qj5izhdQZ4AwLB2hbexDI/veJJlGjxo+oVgMr3x8589Sipuz94Y2
x13oLDbzUArhTBEB+ARjUNtA59U6xk8EmKfZgIN2AJ8ZVKuoFu1wgw5p6GMZgPvmVLbR9/S3snoe
ylC/KOWQNqJnayAQX9BYb5MJu96E0SM+C2AXS/diGhrQJU6jIQrr/b1uxkuCwTdAVQtK3I+2Hkqo
fUQ42FB+zLcgzFyckzQyHPqM0N6k06zgMmTK2luENqrdpllylyzMIw+g5Y/ANdupGT0LHF2G8eIq
/Cp6qvFifAxDiFhpMjwsKq+QaB6pMwtog3zhHsoPH7N/Pwv/AOJIlcbzCsJ5rpP6DIzA3aPKH1Hz
oR+AsKtQ6Cy1IPwQ4nS5xUmqA5QbPv9gRbD13SIRi/TN8ZIx6q7xqdkODSmD6uiXk5fyTZqM50T6
3f0qWRQRiF3MkIJ1eILIVK1YAsJen4i/Y9kmuT4p2uQewrM4pO0rwQphUQo53pjspJ6de6k2COW9
LvuVrRHzZQiVBUfl/6nDFNgQNACsKgALPhpwONHmhc4ZhElM3V6N/GXLSd2EOq7JmZ3WBKIzxpff
S3koVmWVB37uBv48vYvWkVLomfFGjCJX6NAP6WeINslB+aUSYlGqRcaS+ETtzLauujOfo27mwW/Y
0riyi/ZuV1ENJvYm9mmA7LCe0U6WGdZwT1A6WrviUz58UQO4qBFIcztCKwmBWt26tyVH2/V+TH+v
OanXE299SOpDABKaCIJkFvgxznrVAOhZt0ls72dv1llQV+Bfq63QvCvsoVC2/PvdhFzkOLl0ew25
3T82faAIYSj4LBCOUESzDAgvOlcfQkhs1gYsvXKnUsw7ovabH9dfzMP502A95vnTJ08VK7TzA/ZU
+nEvRmYg4C2vUvsi1j5+ldL7TT2AbU/il4vquole8q1vRelpoLgxmMrEyS3I8vS+Q9Qq5RHh+/JQ
vO7sBCisTDVwPDHxsLCoMGn97jzsuuzZE6d0RnDH88hz7q2qZ02Km3uKJLbkqin1MO8XDdZwa5tn
lqL8XQiEHWZcbc9e9UK3bEct6hMYZqOTsRglfkC/pCDNby8miqZBPGcVdVm5ryKh8pLGehn+maRC
6cAuB5GETeBu45YxipqOrAmClU/i2EOXgx+N3MUAPBl/CwQf+hIxwiWMwRhEfZ8a/BQDWzjwRR6D
pevKzB+pCMmJKS2wCzGMMvVBz6EFdlSN46oMufHRkLB+rmGMYJ9jHFWahz7CR6OD3VbnlaVNj9ER
E3MxFO8yEzF9r2B/jrSbhIaX8Em7emNrHF/UgVt/OxNVzmASWqKyUz9NghqUZIvCdHOVKSjoK3Au
vvybZC5ZDPzaKjm/23nqOT3ln20hPBwx3cKc3/c6x9pQEMR91+OI9pTgOXSHO2kD1EVVJeBgjKtp
cHLYlmGRGqWD/ceVl1bWPX9zz3FxsleGSAAUu/+01vwLRY1V1sLYckoy+CfigNST+ow74E94rDIn
XxD8KBsHHN0aSGZ9dfWyUDevSs61h3zE1zBfhLF9LpvP+bn43AziLOW3pvpF97/DkF/McjRXgr/B
OT9k6kGi7oggor5V+T9bh4JJBRClAXtAX8LgQysTvln+2gSxoMk98YbUJ9ecO9GyLASuxjWAZJtC
4fzcY/ccGCE6CxY3VppUpSUZoEib8i/BK35YyrvrhBw3ULnyDpFpOfr7KYaXcBSe4b6SPjNgzCKy
6A/NCAx1lQWidtmXb0Vcn98wIekehUwBYRMg9PV9mVXbfnhjqKzJUK1bU8jv3fktdsuAFxcK8Lts
55GErGlmvhLJ+zcHXkFlWAbV5Ao/CZalBGtCSWMMuYHJJ6feWqV3nGrjkkN+4RnizYtOkjLsogNz
+V3f8Wf/bNkQXK9w1eSNUKEZmqSacc63wkJa9n326COZGBrXlxtwAEoCu4Ej4zhwsYY/ZYx/xHdm
VZ6tcXltKtMUkD4wT5d++T1mp5OymMJHlaLh+9fRHuVuwtvs+Nup8EfrIvrIb+7z+Ok/Q0zrWKxs
0MS8kXgoWkXDmmTDPLruU9ns22gVyriJrC9NDsoMGjV/V3Ts7CCItpPiLLs1vkoYmQPPAaLA5ons
U1RljbKUwYd7L/ZfZChH7fMuKrh2QKpnQzVQJ+NahIOUMwzyKZgpHp8u4FkBqm2L/TyH8I8q5/yI
QMbnO7jSvmXXD9eLrtkgsxBcUNyarSAJMYG6fiipe3RYmPGppoE1mwUc8IU5/sNeMEwNwsoHwNAh
LPClS5eZGviVLYSMebomGi4q9f1ppcPsKPHWgS3rJLZD5uDQ8zFV9pC6sfX/5FIR1Az6dxv3pFkf
XPsJJGM1WFUFZL4zsS6mk3y+THsjF3yvn+nZzmQuL4S1w+mitX352rfzX4m2JTKp+paGeHOdHNEJ
PcEH9Ur2x70J6/41cGkheS2go7up7bKRQGnbndUVYQ3PShWngYMFq4kVyNs+4lYrpkw7MnFqR0ez
VGMf8AbF3diCCrNMjBIyKUgBkqRwhVdSFIFGW1yQxFVXaBfQybOM38sUOKFQpnIviJbaeNT4iLSq
EEukA3r1x6o9P6j6VqtHd6UErq7H0Y2Tdobqf9R8W25Vz+oGQsZGpT+Pdb+bKLR0zVnSyBVGDITE
FAhWyez9d5csaWDcfxJ+lbgN5Nnx9+haA7sPIi5P46iWJONIsLxVYz5j0Lu80jFzY4t5I79ND3Zx
qg4QygYSAETfXlVHpj7Ud1Mp7JsX6EgANEbQXL5qRGRXAcMfZAFU5da7yMv/qf4cckKJV/lww3wb
muvoqz2znfamyFy364YCGLamzW+FnlphxhZ5s74diQkp0zZa38T4G9okmgnLBERITaKFYWBTduD0
IOIP3mHcxspT+r+o/K+fqR1nArSGKAGdd2HgvFR8ef+aqHrVvKijtkDTvM/iMI2zqbpAGZjA1m8E
ZYq0hrkZFLUNM/CNSjmy3QsJ2VW2UAV+HwCPp7QB4MBsl6vCZfvbLyIM9cwg8f8AylrIXOPIAkAO
1w2iPuWRaJh+eLJUgSNz2/T+dZzoT0UdWWiBjB81Q5wXKonkyJgjwohlKXyY9xvll2wDYKHljT0D
rUvKXpQuewp6E17nNc/w17NbFXv0QrkARQcY6whI1JFirmV3F7LMS9scOnm1RMT5nsS0yRa1Bsne
m3BrbSDllxlVLgRQDjGDXn/iuUZdmSqSoRcrw4PxfYDxWmEF16qcar+iimeQ6EHZkY3Xyyik5D3O
DVsOCG1m4vvFwYT4E3Tohgl2TWhYAZlPSXUQrmfQEk31SIp/E7lnOKrJBZi7rHDvPqIkZpmygLL/
GlNbyvGFl2O30mVRoEbPRMWvNXZrKW9wjM3rVFocu7AxD3vqGoStnk/1yuHEGrNrGG047m+KyzCD
6j44+e8GXw430QOGsVBJumb4kPCbz2Nmk2haDK/7oE93K+Idax9wlAPXaJv5hokVtcF5gCWBlJ07
m1FAVm7lMny0AxS+dfBdeqtL8CEjJA+kN+RZ/YilUcWrHfuRd5przWwYbZkAPZwkNwpcyKyECN5+
2uz8gKyCZHXdDAT0+0ebPJbgVcBdgTBgmj9u2OHEXtXZnenXtxua+ummOfkhnJWklmC0LfUn7c5l
W2aWkJX7y3CB/5Q/LUFPCeYyVzpiw2whX4t34duJaAKewxsVRtaop3q6YlE/zF8fBvhiRrDiwiZU
F7CCesMsTdAvVLZX0hWARuVHMIzPswRaYI5mqU7JomW+RgYLh8W42Ou4qmYwglGh2wAReptAx5ot
J6tarLWECOdFhTggi+hgH5AWyKV1r4vN/eEE7v8BkwjElPOvlQbrOlKVfG9EHy51LfSP1e6EJKas
SyYEma6TYrPq5rcLD3dqnOgKFqTnv6eUE3Rc7tGosOrt97BJuQvbksbYY2OW+le77s2aUTOKW301
0vsdpf06FlmJyNcEtCUmb0zFKQP1cj8a5aeThDpjakuz1kUyGI68imbPVCR0I6TmRhUzJ/EwvwQ1
QX2EleY5GEmP2h9q4LY9q07bUEwax/R2591fYDttHnW+jnYcsHPPNEAN61AbkmtKXOy8eGKIP+ZC
hIUMKNEqQmowpJX+mqxI2bDfgU6ZPtkwZf63uIJ20VrBwTu0IqqWaUEdVQCTBAcDJmsxWRxRtpvy
C/ly7G0mrq3Y9WGXsy01fLtHAzJJmxQZROkOA5LdSxg3wSpnJkYFZarpvSZbPJLG8vh7MJlmCyFb
8wJuUHwa5S8H1mPv+vjKZBJemnY0fbBK4TOoO53CSNpAzQMuXvMh4YqVA/BxblRdviMavam7q/qB
E8pvI4GAnOsSlz0En/IOp66f2EskkDDFpe+qwVT3MtQ1Y1SfKhSDKbivCVow88aB7Zc/ZDKfUCRk
QkAd/Y7t1poBIZsJ+MEdrEH8EZLU3VFFiOynYFl6H2HTaMLfFeIMEBJJPKg/F+sed7bomtY8iQud
P36sG7HgsuDB27N8/A+Uh9PSJTemYewC+Xud/XAi1AzFZD1Y7xSYfCNvqQGty4QStKjCszQjcnE7
H3m46od4msu1lltN3llAX4yAUOdbVjYma8+o8oNBZ9LZ9QHc6tZElWctJSIVtVoGc9w1UxHaC5Md
yahfplzaw9wlnzVNF6ML1HxHmMaJOz2frolFx8S0KYtBx0PcwoTW/1ki7qa5YtXRw42BpjZMDiTg
xbR8fPG+DxMsLxR9kP+kejIuZmMlaMRT4pg41gYW2xcnufpRbLRTBnQyHiabyalfNzHgwNaOSY93
P4L2lCKiXDb5Veso0893rBgYb8CwFTJysPYgZXokyFfvdPb2AinYuaUL2vp6kP301DMOYPtLZAO/
kZA+l+zv2R+dQWZioc57iz9OKAyTbBeB7Xg9a1gQ/j2mH4DQoAdkYECebVKR4RvBfXfkqsiaMeYB
WR6tik6a3BvB2Uw0/0cP5KhE8L4sH41AfSKgAdYxFqNLcUfD9Z3hr3G7vUvn8EZeyj/tMY/JsTiY
qx/Rf9IgMdgcHyBw83djfjRt2FeoIrzNyEHzu+NTCRFyBhH4y6Y+lBDlEnA/1xnpUjfGgLrC43ZP
i2l1ymIN02AX8BAMaQrxpQIYxbz/XlbZZ4BfzcOsID/Af+tkJF565FUkUfjhyR2bueFV80xrd7kS
tS4osWtle4rDA0/Zny6T29vFCDOC6/I1uV4lQtvajK3bdGIhbzzPE+2cxMpaoOrJhCzLbuqDifwl
DERBbJGmVEzkISQBnh4QMrIpNYkX9A41qOoDeEWPno3VXEYwbf0cNUjBzZrZ8lLGXRSoaAvoyHTG
qc8kMirFWcjrwJrJGxAEC08fU+A7SQH99lXE7jnw+XEa+H4wGoiiUNzPoJbVhKJEOlh5BeW5xUzr
t9/id2hIZYd+Glo2bxPfgW2YzTq0q/c6FHuaoRHz4/khJtOweTLVTrvnfEEesQWp6gtovLtKUu7o
Tch3ZOxa4HOOrvOmPN4evPcK3IKF+rkteSgo1bq4q2cqA1UehseUQaQsZLggyqtqV919CFtRxFA8
otqly/e6JLPCJjqA4uM6zIF1zK+3rkXyYAzDO/ykY7QyoTKITUb+k1OSkEcOGmsjf6k00+0pjxNi
eZZ4QQh9Q2oQHXtfvoH3NVXFeL8XwtcWeCavQwMFHXvkNz4Y1N//zFI4ZVKvyeXMA/PqCnJkR5Y9
4M4jwtJxnnKtdQShXqvCrXfIiETUq1mxF/6BZ9UBNmQE+UoycMB3QZrpfhSozc65ouVpS9sgzcFu
NFJ76GtVqC9GZ3+n7j7X5R6Q/CUWZs90TuMbTDwqJRMOi9dSNFjFdYA+QvVxsNHan63HEqLV4iGk
AXb/Sa66DCH4MqGfuiDEoZLh9bw/RTILF4GW94FNc0Qsttzyu7ugCXmbuKq6rmv1z7Q5066Pf9oa
rHbPUCeIH4MtgTEn2Z5IAJCR22GwGzdSkaE2dmAl/PrxV6+oZSZGKzUKsZhzUjLyqU8IyA1q1n4E
5RVVHmAFP5zDtVWApW46nYtqoYKej0A9oACQ1ZfGlkOMnhwWHZVlrmeXwQf5zpC44pBkWu79+vZz
FJd1rziQEOHZP7H4r76vLutHXY5v9ZQxPiZpgAKotKb+eV8/KxLdGQoU/54RnJqDGlZKcyRP9Q/o
YhKTkPiwqLDKrlgH4ue9hxh/Wmwl0i6Xp/oHeCLBIvdgwWh2Wb6C3euNmKBk81NjE45Hg9B7Z2qN
P66Ooo7OcLyFNOYf3z8XwCVFdcB5DHhpwSyFQ97eQFvHsl4MP39tdEOFZVNG5PB80PpJR7LQiCYt
egDdjRBxNutchxj11/985bBoM3M5LAOAXTnDNLbU3UI1Meu6LdDl/9LCQ8+nOCajZvw4uXZfGV5I
8+nF7tAO343Xy6Eba3IptOWZIKOT0Sx2G8PrPlk+PjqpOkCdhdctwRVQ7StOCd0mTeTYzcap8sF7
SSJTb3EI8Jdqpkhd2d8WGg2qmBPd+UUa/hcjf0tnso4RY4V2z/XyfPirFPR8nA4HK3FUTFQQu0Na
HmzGTDx07qiGWiZsKyorWD6eYEFnr9FqO764Ojfg448NhPpGXruvcVY4CPcipergofnMYGwHIvHb
4+q0QKM4oqQUZ2ISvxyzgQyhuVHZXUbvVk8UcIHETDGc10nFyGg8OKHhT4dLmUH0WDRKgH5ENrMj
ujA3V2qIvIHYgnnYpqohtxhIXBNa4+oQ1W2Hfj+VOUEtQB9bqXzHRbQXlugcx8Zx2VzOEhyN6D7e
joh/n8iwCqKQ1YK6frv+Ve2LkpMgR8YlojJQZHcMSfIso6Q/ug2XzTQ448waIzLSAUGJgcvJ8cPz
ROEMeUuzhtdbngLl3I/IlTyNui7gavQvWjumFFoh7692tYQn7THsRIRKm3repJrFe3fPUGJuyJ3W
TBeX7GvEkW9zLXIwV8opiInorBDw4q+VA6Xx4isk+ZlUMqmP1RDTtAg/Wmt/NbExqX99DNGAOJqg
gu2GmJJAvYtleeBmsH927FbvjyoX/FvedETPqR3JbPctn5/Qo9vg3jaSQn9SfSeM7xsns1oExION
5fg7ebVf2hzxe8WaXobvorinNjF+gwNnSFYFzJAtSgc4v3wLaQcpDsYeRNTvbHrPA1L3ERfYhwhF
ibQkUAM3fX2G7O6G9kZDAahJ7pk17agUf6MTfiJslGP1VXNPqgIlZFmjCAHJtlawI9mB3HFOXZIs
qWgNlHBAa7O/l06MlP7SCaup7K395CAtwwg2C1bo126+haXZ3n0uWSjyBkM56BpdHUSS4i4kZFCu
iWWtwYfpTvRWHOdmfv4Wa5DsJgGc9tYC06nzf1N8lYErjjiqf7oQQo7Gt9plywTekGOakdzpxI96
FydSYjMgHu+NLAIM4FsG5gOkt7lrcShPCGdiCUHI8/OeZhKY4B7y7ImPe4TQ7rhwXdivqFo2lb1P
J1MCHEZfnVoPM/CMMI8Q8QXI9ugyAHQqqAyb/0/NbA2h1OUq+JP4+J9kd3cJRIL/ndmgc4H4SczV
O8xaekE8dtXrB+z5yHCB30AnFxxW4rJ8JBqbuur9EhSKKptTvP4j254PXirBsV4wuEjMTWuH1fk+
IJaUdvAO4ZhntZUimIGqpoYzqNLprVy8os+Zs4Gbsl5nXyBxEA6Ro3OqF3rrDtlkYX4Gdsxqum81
qmq2/VscCf7qbatPJDtrmvOAmP0xAjjIvwY0WUR87H7vCb/JGAG8ofouzCj7OGh+cq77ZYjad/KP
y9YQhaGP6+bBOb6l3j/8WnCzKc40rps5wLrZz8SA7XHqra0Y7DO4mrIqDk0bwXTcWRIIsyAtLD7e
XFHaJrT0IfD/0uM7scub3pwdjKFt6RnvorzX+FfzSF6btGa1Vmskq21/38CjWzBOT/bwC9ybtKBd
1pD1XQN/9CtCmZl4hX0TOJ4oKPhOAG3YoK5GxQiVtm018+AjB31cljzeeIMpbaeEUHXzg6bY8Gj/
ErG+kDs8H0PLlIZdr/C4szXml98lTQi9UpmOg9Q5djI6mO4KxvtcOJEZ+/z/nWO7PJ55QQt418K4
rCQWlNNi37YgDjBZxPdrJbSrllVmrSz0dssxesm1LmKoHhVqj8yfWTTI13synojeYe7mIq1+gPOM
qPjvO0lY+aExQi5uIWDv0YICSSuIHrJY1YELv0jSSYKZ4hcv+YXU7wLR3V2WmJLkcWXaoFOsw4M2
3y270eU1RK2qL6XUkq1V41CVYOfriY22ejEQ0lpc4XWIncjsAm6ls2vttxSnM+ATyMjYobCK8pa9
DExEtshlcOjBipG0buF9APbybDmTNltFCoBvHc/Two2+RyEL2VxFuxLaoK587PQKF9DtUkWsREfp
NjM529kAhGMv/TR4uRG25UcUjdblDhiBb8z7e+FcbXGBOMLne37GU4E1kdKWS8uFeN095fs5k371
gADCzQsi2MhQwCfZLoDH0qHq63idltTJAETsdR4VkaNjxpLvvatlYcLk5RXxGoB4Et5DM4i+0VCY
TVkKWsE5wCbu0v16XF7PTC4H6ah3BbHWIsFkhk9tMFZ2XAX1cgPnU1rbcL0yffIfu2sTUJXQMGzu
wRqkIc2UJBSSolAcZPuHmtdtxkf+objgjrhZVa5u13cTZtNzFLmOugFnCmQNVZI4i+jFFPSCBzOY
S7ly5dUXyEAzVImypDjhdWXl4HcQdUzM1AfDJ1rWFbMdCxih68COSSXjtt8heHCpNDdN+Y74+YLT
WxeNpGFNpNp6c2Zo5vJuoPfaaQqEkeqKmXP1A3N6eqWFt8KYM789CaWAvxMShzNAHAeBMCkKvprw
GFgn6lXJn9xq5IO+vIWYM0eVpHlCdi3P8i+r8NF45dlO0qm1zg+rlpnMk3D3AH40PxVAcCy8NDl0
JK/VYssxcECBtnYMu/dbiKH+4e8QlorlPW9zTlFLv9UKS6bAGTTmOdACamlW3cP0PTB8BrOf9HZs
lfw4SRmvBzO4Od/+KcjvVhwYOlvU0ywcXjMu/5Br5YzUdieyGx0hpoBqYX2Ihi+LSefns8ot116E
5Pt58ZUyRNN7J1jnPwk58p9VM4W3dc/zjtGc+8Vj8pGBB91qS7snWG6L2R//Wq6rw8qBcJHYDoFK
Ld/fdvpQNMH3H8Mf2ZXaZPIgLma9tzLB5ZDTRSjOy21n8TVj6rDNfDkpQrAoRB80UUpXi0LLbLx/
qCIw1gLhuIJFMRYiFDi6Oni46Z5tgphPvemnjd0A9gFn6im5uWRcXZ5aDwnoT06jkSx0zMeV30e+
gw/ETwFkiaZkGi1/VCm/MErJ3aD49zKI9ncNFrHvxDQJiekAaE6naJzg3QlNHWCo5g2goa7kohII
I3XCml6PCIR39PgziMjgTsKtWyBVrH7Xb4L1HXXkfgcOWXOCW0ihoqzIXO5q3zzEksNPuteSXkUo
oJvXmYsqoK2jbvkQwLIpIH8qarLLBNsW7omTWoRvPCg8o+20UlXEkD+drYXMTmANHfL9wmmWyhX0
0Pb6ILyfQ391uaUfLu71s5X9W0/Vt7cQbNkZSWKmciQeRzoDDhCTshZ2yYkVSrWhUhAPkNZTWGVp
wZQy4AOrIQ6lqQkGYG7Dh89rXE87ZtiohogSX5zx3bNPtm4B1VikNscZst9DvOtMVOduO+qAwDAW
C17iJNEBEqBAne2TlIO/PUmHXJazLjQUWAsx8NMVPTYWanDAA9zf1Oc8c6d/XCddgwDdnQDIk8Oa
2apotIDjCXs/An7hIgsMkRWmajCsdbgItgH/klw0ZD5fBDmHvM/BfAqXJRzt3B2nPG04VKNjF3Ho
Z9gUcLgZhkBhwJ5/9ofgJC7IRcyOuRcT9+uvVCHneKqUNaaPT2LkXCWbcfavDmKL78G28RA/+RVH
t+iml7jPe+ZUDeNTAy+Y2U+cpWacHz0LOvO99zVNMlZlGStC7mbcxI9OgPHiBtCh6ZnOq/Wh8aja
ReCfNAF35o1CmNwEriE7zFZsyKrk4+WxvrQw1FwxFPDJVnixHLUAd126OBkPZQIvn2A8i8cUJ+4q
znJn+M7tIdT4Gw5VmQ+JUXcvZR4R9DmpHQ/7YEy8Yw13T1M9oZDWf9d2ycN9fq536MkpiCAwaxWc
sVwj70Sb1PQeBw2haN1ZU5CeIMWWqc/b/F+ZkW4DSIwFSEeH97nY/LFqK8JOqR45SjEMhYiX5Q2e
h2zHYK5VS65FQDddIBQxriUKls7g9+YkYvsLJWUwneFPY4pMw1RwsUIGA9eAr135mrlQZ8sUH8ZF
Osw2mxOoEVL3AH5fbwGGR+4IxdtkHgQp9cUGEzXpUeX3oU2PoxnWcgBJAnAKPtcMwtL6lKf9arvX
WLjNY7GreIP2ge5CPynYwp3kYzkZbDt5Xx1kEFTXx7jXTovt8CgrPt+FFsFGVCLRWDjsG4nlojpl
EMop4VuTtUQuS7ZhSQNrkkduLcXdWMtVzvetBn+JEQ9JImFXEgRPoNQSywMM4XEgkKUhNYvhidGc
Z2FKsmvkZ36LodStmHi0gakb06Yw8yGRd9KFhGKma5YF1y+Bu1dpj0Vr8v84gkR/C7WLSpN0o6DR
a9Ucel3tQw3J5gMWR4NzpkUZni5+B98nswtJK0ryDAnv4pKAtHzA91KipB6CDg5FWJP7GD+QtJN8
qSYBPn1Xdu7Sx84S6eE5DKLWNNbv8gVy4nUJ/vROzOcxl2eBxHETyLNPtQjdgGy0bniII8os13Lb
KBVhvoe3q+eZcLypMt9apbxqEethsQ+SDmOVxgygeopqjgt/htr5zg2OCXxdoNN8PlQhTUBcti4+
FaNJu6TAwAZHmdwZCYjcEQkT+RnVszjE103faywvYjZrWMgL0f2bi6XFUNRfHDBDfKCnIHOG0vcr
NlkOovqyKUegBGyD+XfQ1Ym/Vh1oBdwkI3UwXWuocmM1WJdamwFKQp5n4gd7eXpKnx/Y1U3oUQny
NQmLqcUzhFfnM8QhO4fzbD2LviCM1Gk6Ta3doMdyfDx8DZGPA0hzEajU9P86Mr4KIYN3K2F9M+D3
LfUd+6h8wzhVC50MCUfzcYj0AR65uz9acZylwN4h2O/+I5MHTI/wFaclFVnCooB2hlV58QtyoCeD
CqD7YC0XzaW0LRDjXjF18VkgPGvB4ujX8Cp6RmDqs+MkBkL27i8u5Rg3OFICJ9qCr26tvq8/m2FJ
FySi9C5GKEo+dOARmJzLdg+MguDZnyymRPYLVR5zKS7II9AkMIARYCrKADSjn1KF8p+hDN3arQSB
AcqRC73/uuIH2kzTU4M3zhF65YB5HOB5ltPBj63pLdAcmf1FxROmH8n/19r1VX7a5IXQxv8pocsL
8J3jadRldxH7MDLAHgf+QEAAbr6hZgvmRY1CztnhBli7V4wcsGiD1hwgFDELpTeyGofciIpKAqa7
E4jgFD6E7QdEAFuvzwiMvJk3PldgcpY+sygYQTaEPA0Ma5AQJdz0gdCP9AggiuHc3dgRYBZKO4Kg
lQqAHN29I09keHPRvgwsEhBKEa09oouM3z0vYebkm2gvFprE7v6YB9R8FA98+Xn3tV4zbWuLAxti
02D6junq1w88E7ox2Ayc5vDfdkXRcfcDzppqTegw24mzU2V2zUydjUVmk+3ZxQxmf9HYn5Pf3cAR
oIirANbNI8xegzAlsp24JEU2dZAquStmMm+MiCpqXxihyuVbidcqhnqHNb26EnkQV5QGNxPxD4eh
5zDNXfkpOzsNVQTkDLIIB3CxPNRal8WuAk6tAYBAwfsTw6mczHU6GvphPa/d59wBVPT92sPeO0cT
bXkWh4Z9zrQgrPnUJwexwrUdG0++9ctbWVnXJ4jkFXVHoksgOoSB29WfWq2D9ACu9SseF9s2TsdS
qV3JWUABxLJulnHk0NJoXiKqF62kgvrTBW6JDXWGbpM/DYl6TVvj2c6tZqUmgBohS207JjdB0TL+
nYO3ACxAiuN3MtYXCRrHC3L9XD4mIRL2ahBTaHHLi1jiAkTSLhjJOZovsfJwFMgCKKDsKfl84TIx
N99LRXy6YFpIvZbkrTj2EtcFAPN0uUEDjEnPRKEY9VE4GYLStBYCeIxbI7K27akj3IbmNc6/ct6G
ZYr2Qcy5DjtS9YAHcihsPPDr3x4AKtWy7guThaUIR1ebcKVdQvoz+sJehY7VUCBkw15Imo909f4L
K0LPfhZ2P+5AL4S+vIIKaK1RR0jL4GAjeBYmZcY/ffk2WTQBbyjjb72iOVLKkx9Gl/+HdwibgLRU
3SE0OKgmnhWZsz1Qg30L7OhidsMed+Ry7AENG7ILWnwWDQazVyESFfJZDenZReFxf4+0L0Hlt4xO
pTK65qP2Ds9S+fjTHSkbNiHodlIr9FsljeR3rnYBCeQa53asqEHkDXKBOXJFEpiY97NTgrswgKGC
v60mWCDaXFhxUH9ruDuDxnNxCuUilbJGbDsMZr133L90FaOVe81V4qXcJbeRHe7m3x+PMeM3n0FT
uN+yYrsdVOp80fEVExlNtSpSf8A4k8Cbo8cAPOpFG/cDkPFqXGBLtV7dmoitb3OEuchNcmdrM9Xl
mDpBcvos79+xVBAWlsxBwHmBY5O22c+HmS9klCgcVqVwqOyc/+V12fx71OIR8OgL7IsTdszFLdOh
navkvL7toCCLQQp1fjDC8sNHZvSeC57BsDRwFCwJlYFjxm4eTK9iRXr/WCM51WMM1MJsmf5LtECj
btVqnqwZE2goqE1y5TfCME1q/uPu47YHJkKItthtno6tWWMJ6sN8N/3g0wnY3RvSnckw/zKQ0KVQ
cPjpi8hn6eXehRl3SwSLWF3eGoD2Rqsep5ed1XtGNOLPuIcUhXZaXs2wGpqajMuzfecHOLDfztjx
J82YmZ1e/PFI3oQBuoMLy8Ymk1wH6iiUETM5dsmWtYR93E36FIAbZ/4Yvr2ZU4XpydW2kqmgH9wC
achwVbruNyrzKM2lBVy9E8wMoixwisRqvHqqmdLLOXx7tlQmt5xbDvzR+cJAX2KEchP+5/wZay/Z
+NUC0wNqaMKY/TBu39F/iSAtnXnvyCbGfMAF3bmsFJZSe4ilsqkxxkJQZEYvbpcKZ1zR+PeZHEnR
wH/CQWxwsCj+8yhbTJRGpDv5axwd9Xzefi69yz+JlpYUr7Q/0URxvmfdTG6e324dpTIWkip5CLIN
8cM/j8UZfF1o4/sM7JjgNSecpmvwNPymEh574wNQ7RcXFyvWJPwcO37iYA+wObyj3onlGY+1NzrI
UVnGoYqo5gHYNF0tFNdbC8+DNZoSx+BuK5TCqH5RyVvAOwvaQr9Gg82bvJnb6WppJf/tDgJU0PK8
E3IL4+guquWiG+ilGzZDKNGQC6tqESvtNWjxTYkBVJ1TMgSqiSfRvZ7liL5PcdElrDnmPG67mFeE
l4Wza0Ioh6F1zPanbybfAn00LFNmWmN1iapibNrGy8W609SyUq7jH4TNbjbJFklB0ywWxPgEs7R+
gO4SYwSpH60krUf0yzeBnLRXSrjE1Uq7J//ek7cjTRxGaLNExbAiv3/E/5zDLUK3yS2u18eRDZu5
MpmT+GZ5gBoIDjLbwyLHuzyddLrOYUskpMeTmr9ta/kYAGcEosgOeG0pH6D61XZpAyI7Ys50R8DI
5VBEnUzdODftbGakx6FdxV/PrYzU4sndfO/fRsUtHCDysLi8Qk6mEc74z1UQSchGcBTvM+ZT8xYR
OwALWZLANXFHWRMstSaOT0xV0A1Zo0+KDRADBjibl7H4fVifzDQbQQcNrvF3sO1oi/M/6XldXSmK
fxd1CpTqYSgp31HMmpD59hlsMfB5YR38Ihvv+WmTzXchMe3FgO2EcCmbum1/1d4jVtjR+06T8CqQ
qUDGodXLzaF5VtxHivxUL4XIdKAMvloSibt8lvo83TTGnksJsLh/8v8uYO+JvVgbt1tsomb+e/mA
ByyrAbJ+CTfEt9WW1XHibM9C2X1jnibgG/NNZA/rpgagbamqkekHoZ2iz5jjkVNHjaE8yBJ5tqnE
zMMnzzEZAeZ0tgD+nPhA0h96oZ41qYV3uglu6QT0mNDPxtujeG7Mtik12oswEYvpnxcSNfUpUqpW
G0tPCdAHBn3qTXYIzjaPf4QEM7AGbLXkwQlyoVg/CXABeo/yydhBMFHAbTr14CXm3RTo6fQWlDsj
ZRB7qJy9vbdUdMIdSVFUBwP+V1RPk8c4Mw120908t/m9jSMNuYzN+BxFiolzfTTfApo2qUdZO3Ey
obM8lAoT6fRnTZZKmX44PcVHhr16va9GgdckqouAL6dXhkrnESr3ifXKOJvCU/aJxHK7zkX+vJBP
3VXO52pAEqNe7IjcvnFmYzUvvlmobnbCwR+LhgdzCD37iTI25WJ2xsoV3D1qucj5bk98nCoPiZUj
RiFcHHFT7w4rfJn5ZuiMdTyaHpoyvODrXORRRVl98vi+HRqgdSxu6fTyDHUZKkPVY4cqyaMOI6JQ
TpObZspdrtGQjgsCJt6QmtPNNpq8AyPUUl6oPCZplWtVgULM0dvJvXotolWYrYBEWynhiacbAVQC
5Y3+lCIrrx0fSYK4+qK73hiuS95rjZCAVX3qV+1MzQ4eFgoxtzJpz65sDUs5+2l2bn6Cg+8jdTij
l94ELmFNe6J8VqIYVpRa/BEgTPW8WntB6wF1E4Y0hzr1vAbdnmQmxckFWGwQeTpopMvD/B1KxIa6
t7gBzhtHqpKMbMi/TO3o8kzhrhcjT7n89pNmrt7M7lKZc5CuHUc7dmrO1R0bGcBiE7zoVIvtwq7D
LNJlw2+R+LXriuMItAYMfIhKPjwGH5UCncr1a2t4LDiZxUb05tybaOzwjpubFhJx/iChR/m06egd
Fw72bYdFcCM000eF9YKCLawLvPvvslq1hBV+0A7/9P8PZMK5c45GuR/MHHKBgcRIHHpj1cNhzFbH
B77cHa8qXfoqrtTYLZyu8CDKnaGiOJxrlTIiEcyejrqaesA7QApGn9GwwikK53Qd6DyQviiZInmS
HGw7e9uAX37wa8ClrfXBOKbi/1+rf9cj3AUQGWEIveYyejAVXRiOZKPvbv5YtJYnvwSEeARBfriS
vhDQhuqR8z2kdZFnt1Ya4IjRrOuKBcsld8u2NoNCGxb1INU5vOXq1J+myHZ1vihVsMe6rYmyWx75
NR7vOYedlOnP7wS6hNYE0voeRzmATwbRqO3pjVPHoicFN9MvLhV9UJ9TOpSMsajiT9h31SaKGsdo
OGv1sIL6Q38+0xc/2Ozdpns8nfkNG19jWeI5DrkamdWeiYTyUlGsmxHO/tcH2t8AG6svUFtMQlJP
szI/UBh20WBPwQ8Z7w06V0/h1yYV+sG8OzUGGrfZUfpJZXoVOdYEsof8Eu57HgF1CuEbKHKVEiDG
7HA+rzzXi51dRHDWKs2ZVX86CATdUa+RIkMEpNKtSSQQ4OGxpaolttHevPWlRnvxAL36ATdQ6FyN
+N3JNedsstVLHLcoMjRC9J1EGxl+EO0GVTfIJDb+gPVK2AO+pwFyYpxGpLX9yWW5KFCWSntdcIKp
LY/NNTHOmNXcV9EaldJbPJvIkDSI5XAgh+RTDCxql7c3/LPBqxh4/gfXhW0URbB2ICwkhEep/DyS
9z9zL3rEMcla6KN0oEsxCEoPrCz1a4+QYXG3h+8PVVznCIldvsmGzuRANd6ZbjX4jnkfPi3H3iZF
lIh7a8A4yDnqx0iwNc+yle0ralTD5nuGAkdLNBngVRU/MZkrmeq7R7me/eQM2vPmW6Fsu0x/Wos8
QrSz/nHKyXN7ztkU87ABR/SO4C4fFU36h6HIkMs0BlDS8dUdUg0MwLTnoh0PudyyuRHUSMfK7NFF
hG9s22r7AvkRwcjgTTG5iq57qHQeHBaHcXfYZ2jE+H/aStK9hj5K3PF90NTCrPiRz2Q7gHkcCPhm
4U5vXtMWaT4LV4vuQQ8Cin4rVNVpDMxGsmxJ2g5DE5B3axC5sXhSpEVm91RzEue/DQsxR+HY+Eoy
ui7awLsLEVqgjuVwA1nvj9PXyBIlpQ9PmwNTkcr7OHhC+N+uspVQxxzHdA2OsM3XaLTsHHhEpVIk
SB9zpwacLOuSNCSkOPifvDW+EHrgspJFwLSzm/OSU/U0p8IH3ESsHhLxyVstDSPuIr+bQcS7dLXU
SiXS4mOEJiF6sT2JemITU/W6myUNpH90EmA1qLjjr7/1ptuqGLE5ipssMYMf6Gv+Z/e0TQmgpVt5
3Iflr0FHt/UKjWof0zxfGWicPhviLbwCuSux5WO5rFdQpANHtg7EYCJei7uVwcVTd9XoUzjJyEDQ
SZWK1E9dggMmyvcvzw5XlC9qP6+Uprh2h7nk/q77oDw9ZF/sfiFz0Gs6p2KdP2aRIDMEqJCDadgd
eJTA+U5RqU8xvUfcN3Loi9ODh80jzuH3/+4g5e4gdn/JJ9ykm2SyLr2+gc+kM4lsw3USU80qTnEU
dy5VekglHGvicudYqXGWhAFDPIafaVtdGYBMZ9B2crXHQnUq+Y0tHD1mcHCiQB0eu1eSfLDZWSyN
bdXy/c7VUsIxghYpa6KSTdQVwhBhTt9OBSr6Ok25oQrghbH0V2fVsa8JTMf3O2LegnnrXemDq6h0
nO4i1WDB/sookdDC90T6bJEvXm/jde9yP5zLLf5ympI28GSqfFkjMAOHMJ66tKLdvKazeBq28a6R
s22Jko7JTg+eeyzteUR6fGLv/nFPloPJ9hK/RtDJSukDB1QaKZ/TPJVjaYmgq8DpIegLwjqB+dey
1K8BVAOAMHbtMtXLBkErVGgGum1CTjZT0kzZ9BBPIII/HY2veJfGlN51yR+/K3eczrNAkzUQ4/nv
XPfTLulVKw2Y8GkQi/q55huTyVzlhdY+V1uUYIssm3JF3XWNEd4GfS3zYHo0WgfRsAu7n48XV1Ql
aGEmaP6//btSpcTeLoldcfN1f42zYs3qEHqKj015m5jPrlL1W67jcoOjOHMU6PQ1oiDfPgaX0h96
tmT7mhZ5IhXgg3pXpy4tpt+pjsUCgR45jdBLon1ymIOX0yhjWKb2Xq5g+uVOkaoHSxcL8XVXzrNt
A33s1lI7weTP/KsX7cHw+4npSFWfawg8V832Gh+ZZG13ux5V8AdtCSmkRT+VfzSTE0dg7GlEb+MP
nJ2iwGs9BjDGp8PrNowj7nBa/XdBzg1LR3kORJ4lursVnnoJsz1SIfhJPztGmxgAG/AuE5Agyyas
zLT3LY1Ac/8BXRykO7dI4tJGwen1HUO0Us+LxAQrW9YuZyrplU1B601gG3fr9u36SfibxKIShbRI
QrtFVr2GF0oDp/ZL7Dbz9lzELD/OsoGL5YCg74GjsSCtRzCNuTns/z/eJN5hGe1OiX5GWBi5XWgI
Uu8cIMXI4IpNqPr5OoStX748IcLEkmkOvAu9bemrjsUcdROi/JAHzLG08LBlobWiw8W6FE7nIAeZ
xTxKoXBqsMQJQHZ/yWE96afBMBpb/3TlIp0lmqVm1mrSTTAJ/r38T/K5dnbt1RtSX8xD1aySHKOV
x5VrxvhwjnrxpGAwqrd7qMTsF5aEC6Iz6NTrOfY2zVUDLvGj4qHk/wrMysB5tRSr127cTHFkWgj+
6Bw76UOyx0ooXzjPRxL3Y1pNDKOtk1N8iS5qcTvN0TnXIrlKN/EdYdAD5BeUqDsKzbuL4HzLXW2z
4QLLjCd4CVSCakWjbPxA//9cOcMqPjPKRm7ALIlRQYoe22czLH4v1ic/5r58/x6tr9kmLVVUq39m
rG+wLqfLziQ8qbZYFFzd419GW9jhVFibUV0q2QapSbs1BsYKqaPbevd2sZ2zsAVt8WIaPFCNADOn
1JootaiLpVxU1GPcHdd186XwOaITia2ZmOMgm/waVKN7BtnvuQVGGXI775SSpg4kXwav9UjX8Acx
g8M+JlvOu88clEa532L4kjPN27GwnzNBAOlyzvZbnT3kVkxkqVAH7UHm3NzC+RmV7hlgXawcSHpW
55kQ6Ds7ZwBKiG3ZwJgyLmXDtnWg9rWremZ1O2uAugL/WyJ7956aKtIjampzdj+5xwQnReaCOXvk
sQ9nDjkFVGKdYg7gZ5MiWujCXX8vDd/MvYOUsbZ6lXES0txV4st5192QA6srNn8Og5umoJtbmOC1
icmF8jH2Mc6Wi/qDNUU7UM/G81R+jB2lwY8xZYYsab9oiCm3yWf8vPO0d+hiYl/Dg5Ops3zh9krQ
pVrIUPbq6c5IRvI5OOn1fY0os65Oa5/8py9AE+QYAyZjLlRtywuJDjdJwLoRqqDu97X0F4sdEISO
dLkw2p48Bfr1Yjz24RsfveWstAfADzgqpwEfs51iP19KXSllMizt1wGyf3Xu/FxBR4vuOsqcU2jT
8b/IU4wdk21OqnLCcyBgzRu2sqe8bC8aCDaNMI8fJFEjr9F+rWKdmQtYvwLbEvs6t4mt1pMhtNek
yiv999uP2DvnZLUHQ/bnH0CMyKFi1dd6VGVg0sgDl0KcWdQocnT/o9EPhyXsH7jq6nXHZPTkWdWv
mTmt7AGG3cSMS+KEwaZ2b98Mwzo+61p66Gtii2obxGPUSSre2/Hl6RFh//SDWLwy7jeYLIbeBQhi
sHGPDNELDAazmuyhQHqkntDQpVANhGXqEMoGLBqeGmNgLYHEuf3/QSd+XvjPHRUGPV4Ns7WPOjMi
7AfDHXwoZKsxoxa6d/wZ1LUImQZz1HrA/lfD6SyDSClXlP1RoZCDvTvuMZI+A33qw/qa0RX1KJLT
3OwkvA8M+HqdzVM/tN2vfHs68wBzBRupcEVSuBRMdgx79VaBt0xsqSjt2vvaBbmEh+wsXEZYqVe2
HGfmkeOBF5FMJkbLXulmPp9AGq1uwPBjh58xq9x6UcN1Zai5nyz1BWcl4kpKwaiME1/HOpYnvoid
nat0PucpNJqrm7M++lqS//IjnM9xdjw3kXWMQ4YqYbZTGDP9X6T8B2EjC4jd+Kw8hF+7N8G2NJlu
nVEGYzxMwkF3YUU2k+Vq8A1FVgHB24Xfe5WkbIJxxN1gQ0osnrDuOZk5D+yNFnjX/ioGRf3qKdob
R7kv+W8alu6jsKOGo0qR59rn1ThpxmeF4Yi/2uH040mG0kyZhJsHAP+dKAQCHAdr6OQbUCSFt9AB
LB8+2biKwNhHbxXin0Sp1/lgp+Iwg273b3tt
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
