// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Fri Aug 16 18:27:40 2024
// Host        : toluntosun-Ubuntu running 64-bit Ubuntu 23.10
// Command     : write_verilog -force -mode funcsim
//               /home/toluntosun/Desktop/PhD/fpga_acceleration/karatsuba_dsp/karatsuba_dsp.gen/sources_1/ip/dsp_macro_karatsuba_34x43_2_iffs0ff/dsp_macro_karatsuba_34x43_2_iffs0ff_sim_netlist.v
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
np7c0h5lPslJNJPI3+VwxegpJ8cyZMqHU9YEMvuBSmzogGXBfYytBywecyPb0NbTPHlpaQc6Jww1
38rWBcPeT44zsGqxzCe8uAWwyULTt5R04vgVd8CpFMN+K5vQl9paBvQ3fmroNhc3kgGZV/9rKWhF
btqgPCJvwqx2tRPuAsSAkdJ79ymmutPl2XCAzPZWBluWdIaTlc/5bpnjkBb+pJMu7QN1V86X3/p3
czb9v4xQezHha075hYIPrjbiBub7a/fR7iYMbSP6rb/ftcXptsPjERzBo26HCYyngaTR625vbL1a
rw+81Gz/nD0rclydhc6uGoshldnzpq+g12UuTQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
6dFbl25cnR7d0KRzEpBQTDJqDrD0bKJwg+Imandw/CUsXnFP/0BHMHQs1GalWDidjuhvQCKGVEfd
tfS/l8SWoelPnw5N8tA8gCmU3OJ4CEn3nVYIFZ5XA9QUGhrQW8R9tt1XNdH+v6B+d9u9L8am+AYY
kZurPWVQJ9ylHC2DgjEItEo7yZnfJJOOii/CK3nvG9yII6QdN22rK2peRaJUPa9cYV5N+RYsJEmy
Z5OnWDNhr99fjZFKrRZzDtmgHXOW9T0yFVlW0KPseTtX+d+/2zpgyyajYHI3zOGTBaYoMygQLFhJ
d7YcBS7cItpKALTBIj9REPGRvjzkV7cIBzufUQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 22288)
`pragma protect data_block
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
yg==
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
