// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Tue Aug 27 18:42:47 2024
// Host        : toluntosun-Ubuntu running 64-bit Ubuntu 23.10
// Command     : write_verilog -force -mode funcsim
//               /home/toluntosun/Desktop/PhD/fpga_acceleration/karatsuba_dsp/karatsuba_dsp.gen/sources_1/ip/dsp_macro_monty_26_v3_1_ioff/dsp_macro_monty_26_v3_1_ioff_sim_netlist.v
// Design      : dsp_macro_monty_26_v3_1_ioff
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu280-fsvh2892-2L-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dsp_macro_monty_26_v3_1_ioff,dsp_macro_v1_0_3,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dsp_macro_v1_0_3,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module dsp_macro_monty_26_v3_1_ioff
   (CLK,
    PCIN,
    A,
    B,
    C,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:pcout_intf:carrycascout_intf:carryout_intf:bcout_intf:acout_intf:concat_intf:d_intf:c_intf:b_intf:a_intf:bcin_intf:acin_intf:pcin_intf:carryin_intf:carrycascin_intf:sel_intf, ASSOCIATED_RESET SCLR:SCLRD:SCLRA:SCLRB:SCLRCONCAT:SCLRC:SCLRM:SCLRP:SCLRSEL, ASSOCIATED_CLKEN CE:CED:CED1:CED2:CED3:CEA:CEA1:CEA2:CEA3:CEA4:CEB:CEB1:CEB2:CEB3:CEB4:CECONCAT:CECONCAT3:CECONCAT4:CECONCAT5:CEC:CEC1:CEC2:CEC3:CEC4:CEC5:CEM:CEP:CESEL:CESEL1:CESEL2:CESEL3:CESEL4:CESEL5, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 pcin_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME pcin_intf, LAYERED_METADATA undef" *) input [47:0]PCIN;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [26:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [9:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 c_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME c_intf, LAYERED_METADATA undef" *) input [44:0]C;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [47:0]P;

  wire [26:0]A;
  wire [9:0]B;
  wire [44:0]C;
  wire CLK;
  wire [47:0]P;
  wire [47:0]PCIN;
  wire NLW_U0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_U0_CARRYOUT_UNCONNECTED;
  wire [29:0]NLW_U0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_U0_BCOUT_UNCONNECTED;
  wire [47:0]NLW_U0_PCOUT_UNCONNECTED;

  (* C_A_WIDTH = "27" *) 
  (* C_B_WIDTH = "10" *) 
  (* C_CONCAT_WIDTH = "48" *) 
  (* C_CONSTANT_1 = "1" *) 
  (* C_C_WIDTH = "45" *) 
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
  (* C_HAS_PCIN = "1" *) 
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
  (* C_OPMODES = "000000011101010100000000" *) 
  (* C_P_LSB = "0" *) 
  (* C_P_MSB = "47" *) 
  (* C_REG_CONFIG = "00000001000011000011100011000100" *) 
  (* C_SEL_WIDTH = "0" *) 
  (* C_SQUARE_FCN = "0" *) 
  (* C_TEST_CORE = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "virtexuplusHBM" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  dsp_macro_monty_26_v3_1_ioff_dsp_macro_v1_0_3 U0
       (.A(A),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_U0_ACOUT_UNCONNECTED[29:0]),
        .B(B),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_U0_BCOUT_UNCONNECTED[17:0]),
        .C(C),
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
        .PCIN(PCIN),
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
UpdLLVTvz4XoPdwhChF5/eNeG40WQpTRXdVx35ggyUP1DhTMq4YsnjMerffKvFp1O9ehK4Tmitrs
GYIy33K0w1i8+FRevvlk2r/HRcEbJgjsJd+IlbnkpLXTtq64K55QR2ziG7FMx7hV/07/WuwOq3FI
YOsT+oEOZEf0U5NyvVPpXAwt7meMMeTBU8rwjW39fsv/gHny16Lnm8MOP00GT5RZ7benenzSfXCN
oETXSu0xQR18bAIf036oSwf3G+vP48qwrbLGx3l/0OpXndNusgOux8wMmRMNMKqA5RFgnOJSAIsN
rpzaEhkIe4LDFNuRvJFM8CUmxK8X095D0GrvTw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QjUhIlGtiekp7QgD/zGUKM8MTf0984/RXvdGqF/EVxVaHgM2yzOSQqC5CJ6/Y2sPOnnYw9sUsVfN
zLgHSY6WdPtEiOCxM44bkNYEXHBFYTEOXR/lL3a7dAf63xz7PmYEDL+CKx8WRQ1pA38ZmW1DalFT
dtuljGPyW+kNVxn69giD13nSrL4zKB+4lzsZZ1hBPtXKnikgAG6nBtkWEkKzCBP5diue8zbPwS3g
tMNyKr8l8qvfNMRx9k3as53VPZ+w5eR5fjAcXZPpgrBUBkZvMFC9JFFbXGoHql08gojHq6ERfTSd
S5319YafZfrtUxho29qA35s5e9HqeSbPOYTEDA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 38720)
`pragma protect data_block
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
+oqBCqoj+VnSplnyC3cyK34=
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
