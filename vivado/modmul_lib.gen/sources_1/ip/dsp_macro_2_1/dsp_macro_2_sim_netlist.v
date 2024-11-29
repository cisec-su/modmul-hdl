// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Wed Aug  7 00:59:35 2024
// Host        : toluntosun-Ubuntu running 64-bit Ubuntu 23.10
// Command     : write_verilog -force -mode funcsim
//               /home/toluntosun/Desktop/PhD/fpga_acceleration/karatsuba_dsp/karatsuba_dsp.gen/sources_1/ip/dsp_macro_2_1/dsp_macro_2_sim_netlist.v
// Design      : dsp_macro_2
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu280-fsvh2892-2L-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dsp_macro_2,dsp_macro_v1_0_3,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dsp_macro_v1_0_3,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module dsp_macro_2
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
  (* C_C_WIDTH = "18" *) 
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
  dsp_macro_2_dsp_macro_v1_0_3 U0
       (.A(A),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_U0_ACOUT_UNCONNECTED[29:0]),
        .B(B),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_U0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
ErsDM/HdCd/6PAFswSRszhdXM94a0jeLD8VJtZ8hzMLfirTZe2go73sYKLbvR1f9l7R83CRV81+0
GWO4siLgv6uXmwtDcaudak/CQnO9VlsqeECH/iTPOel9NGlxyqcSUjgNfTx3u4EBDBrRqDf0lC6D
QTR7iwFglN57Kopc1Oveo1ZaZE2308Ky0ly3tLPY1Qa+gnMlmmxEzqOpi5DLAIrLZq9bD+/sRPkK
+jUcZQLNNaFD5J2K7OgwOisHSBIBpsxmdUOrAVOVXxvc5ZUfkc6SdoOLvPaJlXJsAoOxiCmYaogh
rbMFsmP+Zh2vYdHaT8uMdnq94OBv24xTOoDShw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
pKlXLaFN2UPdO3pUf8Smn8FTyZWTzDV70nKUF6p5rXDmV1I8UsPdwHfC/mmxlRhhJLS8sqCwWGIm
VKmFekuUmOT8hl2EtpNMWfXQ+yQ8CRcgkKxrc2ulsp5KBP4/wu7WlpnstD/rFyDX5m05YSP08TKL
9Ejw5jPgLdnM1dPRm8AIM6ezT+yed50gduuQ/QuuSgG3vC/8JaYuUfQG3jnDTnKjubtsyc3gcgPu
/ONAv4N6u6Os+YQUS2bRp3PiLvqYzlPuj7dT6DdAOB8KVtPNjqqJ13AMEhgJ0RbQDxNJkSx8U6VD
BzMZrXCwX6pq+BGHcaxWTOccInnculKzIhTROA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 21584)
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
