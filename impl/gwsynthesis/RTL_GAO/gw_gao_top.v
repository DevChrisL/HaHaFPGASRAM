module gw_gao(
    \CM[7] ,
    \CM[6] ,
    \CM[5] ,
    \CM[4] ,
    \CM[3] ,
    \CM[2] ,
    \CM[1] ,
    \CM[0] ,
    \cnt[3] ,
    \cnt[2] ,
    \cnt[1] ,
    \cnt[0] ,
    \mcData[63] ,
    \mcData[62] ,
    \mcData[61] ,
    \mcData[60] ,
    \mcData[59] ,
    \mcData[58] ,
    \mcData[57] ,
    \mcData[56] ,
    \mcData[55] ,
    \mcData[54] ,
    \mcData[53] ,
    \mcData[52] ,
    \mcData[51] ,
    \mcData[50] ,
    \mcData[49] ,
    \mcData[48] ,
    \mcData[47] ,
    \mcData[46] ,
    \mcData[45] ,
    \mcData[44] ,
    \mcData[43] ,
    \mcData[42] ,
    \mcData[41] ,
    \mcData[40] ,
    \mcData[39] ,
    \mcData[38] ,
    \mcData[37] ,
    \mcData[36] ,
    \mcData[35] ,
    \mcData[34] ,
    \mcData[33] ,
    \mcData[32] ,
    \mcData[31] ,
    \mcData[30] ,
    \mcData[29] ,
    \mcData[28] ,
    \mcData[27] ,
    \mcData[26] ,
    \mcData[25] ,
    \mcData[24] ,
    \mcData[23] ,
    \mcData[22] ,
    \mcData[21] ,
    \mcData[20] ,
    \mcData[19] ,
    \mcData[18] ,
    \mcData[17] ,
    \mcData[16] ,
    \mcData[15] ,
    \mcData[14] ,
    \mcData[13] ,
    \mcData[12] ,
    \mcData[11] ,
    \mcData[10] ,
    \mcData[9] ,
    \mcData[8] ,
    \mcData[7] ,
    \mcData[6] ,
    \mcData[5] ,
    \mcData[4] ,
    \mcData[3] ,
    \mcData[2] ,
    \mcData[1] ,
    \mcData[0] ,
    \ram/data_in[63] ,
    \ram/data_in[62] ,
    \ram/data_in[61] ,
    \ram/data_in[60] ,
    \ram/data_in[59] ,
    \ram/data_in[58] ,
    \ram/data_in[57] ,
    \ram/data_in[56] ,
    \ram/data_in[55] ,
    \ram/data_in[54] ,
    \ram/data_in[53] ,
    \ram/data_in[52] ,
    \ram/data_in[51] ,
    \ram/data_in[50] ,
    \ram/data_in[49] ,
    \ram/data_in[48] ,
    \ram/data_in[47] ,
    \ram/data_in[46] ,
    \ram/data_in[45] ,
    \ram/data_in[44] ,
    \ram/data_in[43] ,
    \ram/data_in[42] ,
    \ram/data_in[41] ,
    \ram/data_in[40] ,
    \ram/data_in[39] ,
    \ram/data_in[38] ,
    \ram/data_in[37] ,
    \ram/data_in[36] ,
    \ram/data_in[35] ,
    \ram/data_in[34] ,
    \ram/data_in[33] ,
    \ram/data_in[32] ,
    \ram/data_in[31] ,
    \ram/data_in[30] ,
    \ram/data_in[29] ,
    \ram/data_in[28] ,
    \ram/data_in[27] ,
    \ram/data_in[26] ,
    \ram/data_in[25] ,
    \ram/data_in[24] ,
    \ram/data_in[23] ,
    \ram/data_in[22] ,
    \ram/data_in[21] ,
    \ram/data_in[20] ,
    \ram/data_in[19] ,
    \ram/data_in[18] ,
    \ram/data_in[17] ,
    \ram/data_in[16] ,
    \ram/data_in[15] ,
    \ram/data_in[14] ,
    \ram/data_in[13] ,
    \ram/data_in[12] ,
    \ram/data_in[11] ,
    \ram/data_in[10] ,
    \ram/data_in[9] ,
    \ram/data_in[8] ,
    \ram/data_in[7] ,
    \ram/data_in[6] ,
    \ram/data_in[5] ,
    \ram/data_in[4] ,
    \ram/data_in[3] ,
    \ram/data_in[2] ,
    \ram/data_in[1] ,
    \ram/data_in[0] ,
    \ram/data_out[63] ,
    \ram/data_out[62] ,
    \ram/data_out[61] ,
    \ram/data_out[60] ,
    \ram/data_out[59] ,
    \ram/data_out[58] ,
    \ram/data_out[57] ,
    \ram/data_out[56] ,
    \ram/data_out[55] ,
    \ram/data_out[54] ,
    \ram/data_out[53] ,
    \ram/data_out[52] ,
    \ram/data_out[51] ,
    \ram/data_out[50] ,
    \ram/data_out[49] ,
    \ram/data_out[48] ,
    \ram/data_out[47] ,
    \ram/data_out[46] ,
    \ram/data_out[45] ,
    \ram/data_out[44] ,
    \ram/data_out[43] ,
    \ram/data_out[42] ,
    \ram/data_out[41] ,
    \ram/data_out[40] ,
    \ram/data_out[39] ,
    \ram/data_out[38] ,
    \ram/data_out[37] ,
    \ram/data_out[36] ,
    \ram/data_out[35] ,
    \ram/data_out[34] ,
    \ram/data_out[33] ,
    \ram/data_out[32] ,
    \ram/data_out[31] ,
    \ram/data_out[30] ,
    \ram/data_out[29] ,
    \ram/data_out[28] ,
    \ram/data_out[27] ,
    \ram/data_out[26] ,
    \ram/data_out[25] ,
    \ram/data_out[24] ,
    \ram/data_out[23] ,
    \ram/data_out[22] ,
    \ram/data_out[21] ,
    \ram/data_out[20] ,
    \ram/data_out[19] ,
    \ram/data_out[18] ,
    \ram/data_out[17] ,
    \ram/data_out[16] ,
    \ram/data_out[15] ,
    \ram/data_out[14] ,
    \ram/data_out[13] ,
    \ram/data_out[12] ,
    \ram/data_out[11] ,
    \ram/data_out[10] ,
    \ram/data_out[9] ,
    \ram/data_out[8] ,
    \ram/data_out[7] ,
    \ram/data_out[6] ,
    \ram/data_out[5] ,
    \ram/data_out[4] ,
    \ram/data_out[3] ,
    \ram/data_out[2] ,
    \ram/data_out[1] ,
    \ram/data_out[0] ,
    CLK_inter,
    tms_pad_i,
    tck_pad_i,
    tdi_pad_i,
    tdo_pad_o
);

input \CM[7] ;
input \CM[6] ;
input \CM[5] ;
input \CM[4] ;
input \CM[3] ;
input \CM[2] ;
input \CM[1] ;
input \CM[0] ;
input \cnt[3] ;
input \cnt[2] ;
input \cnt[1] ;
input \cnt[0] ;
input \mcData[63] ;
input \mcData[62] ;
input \mcData[61] ;
input \mcData[60] ;
input \mcData[59] ;
input \mcData[58] ;
input \mcData[57] ;
input \mcData[56] ;
input \mcData[55] ;
input \mcData[54] ;
input \mcData[53] ;
input \mcData[52] ;
input \mcData[51] ;
input \mcData[50] ;
input \mcData[49] ;
input \mcData[48] ;
input \mcData[47] ;
input \mcData[46] ;
input \mcData[45] ;
input \mcData[44] ;
input \mcData[43] ;
input \mcData[42] ;
input \mcData[41] ;
input \mcData[40] ;
input \mcData[39] ;
input \mcData[38] ;
input \mcData[37] ;
input \mcData[36] ;
input \mcData[35] ;
input \mcData[34] ;
input \mcData[33] ;
input \mcData[32] ;
input \mcData[31] ;
input \mcData[30] ;
input \mcData[29] ;
input \mcData[28] ;
input \mcData[27] ;
input \mcData[26] ;
input \mcData[25] ;
input \mcData[24] ;
input \mcData[23] ;
input \mcData[22] ;
input \mcData[21] ;
input \mcData[20] ;
input \mcData[19] ;
input \mcData[18] ;
input \mcData[17] ;
input \mcData[16] ;
input \mcData[15] ;
input \mcData[14] ;
input \mcData[13] ;
input \mcData[12] ;
input \mcData[11] ;
input \mcData[10] ;
input \mcData[9] ;
input \mcData[8] ;
input \mcData[7] ;
input \mcData[6] ;
input \mcData[5] ;
input \mcData[4] ;
input \mcData[3] ;
input \mcData[2] ;
input \mcData[1] ;
input \mcData[0] ;
input \ram/data_in[63] ;
input \ram/data_in[62] ;
input \ram/data_in[61] ;
input \ram/data_in[60] ;
input \ram/data_in[59] ;
input \ram/data_in[58] ;
input \ram/data_in[57] ;
input \ram/data_in[56] ;
input \ram/data_in[55] ;
input \ram/data_in[54] ;
input \ram/data_in[53] ;
input \ram/data_in[52] ;
input \ram/data_in[51] ;
input \ram/data_in[50] ;
input \ram/data_in[49] ;
input \ram/data_in[48] ;
input \ram/data_in[47] ;
input \ram/data_in[46] ;
input \ram/data_in[45] ;
input \ram/data_in[44] ;
input \ram/data_in[43] ;
input \ram/data_in[42] ;
input \ram/data_in[41] ;
input \ram/data_in[40] ;
input \ram/data_in[39] ;
input \ram/data_in[38] ;
input \ram/data_in[37] ;
input \ram/data_in[36] ;
input \ram/data_in[35] ;
input \ram/data_in[34] ;
input \ram/data_in[33] ;
input \ram/data_in[32] ;
input \ram/data_in[31] ;
input \ram/data_in[30] ;
input \ram/data_in[29] ;
input \ram/data_in[28] ;
input \ram/data_in[27] ;
input \ram/data_in[26] ;
input \ram/data_in[25] ;
input \ram/data_in[24] ;
input \ram/data_in[23] ;
input \ram/data_in[22] ;
input \ram/data_in[21] ;
input \ram/data_in[20] ;
input \ram/data_in[19] ;
input \ram/data_in[18] ;
input \ram/data_in[17] ;
input \ram/data_in[16] ;
input \ram/data_in[15] ;
input \ram/data_in[14] ;
input \ram/data_in[13] ;
input \ram/data_in[12] ;
input \ram/data_in[11] ;
input \ram/data_in[10] ;
input \ram/data_in[9] ;
input \ram/data_in[8] ;
input \ram/data_in[7] ;
input \ram/data_in[6] ;
input \ram/data_in[5] ;
input \ram/data_in[4] ;
input \ram/data_in[3] ;
input \ram/data_in[2] ;
input \ram/data_in[1] ;
input \ram/data_in[0] ;
input \ram/data_out[63] ;
input \ram/data_out[62] ;
input \ram/data_out[61] ;
input \ram/data_out[60] ;
input \ram/data_out[59] ;
input \ram/data_out[58] ;
input \ram/data_out[57] ;
input \ram/data_out[56] ;
input \ram/data_out[55] ;
input \ram/data_out[54] ;
input \ram/data_out[53] ;
input \ram/data_out[52] ;
input \ram/data_out[51] ;
input \ram/data_out[50] ;
input \ram/data_out[49] ;
input \ram/data_out[48] ;
input \ram/data_out[47] ;
input \ram/data_out[46] ;
input \ram/data_out[45] ;
input \ram/data_out[44] ;
input \ram/data_out[43] ;
input \ram/data_out[42] ;
input \ram/data_out[41] ;
input \ram/data_out[40] ;
input \ram/data_out[39] ;
input \ram/data_out[38] ;
input \ram/data_out[37] ;
input \ram/data_out[36] ;
input \ram/data_out[35] ;
input \ram/data_out[34] ;
input \ram/data_out[33] ;
input \ram/data_out[32] ;
input \ram/data_out[31] ;
input \ram/data_out[30] ;
input \ram/data_out[29] ;
input \ram/data_out[28] ;
input \ram/data_out[27] ;
input \ram/data_out[26] ;
input \ram/data_out[25] ;
input \ram/data_out[24] ;
input \ram/data_out[23] ;
input \ram/data_out[22] ;
input \ram/data_out[21] ;
input \ram/data_out[20] ;
input \ram/data_out[19] ;
input \ram/data_out[18] ;
input \ram/data_out[17] ;
input \ram/data_out[16] ;
input \ram/data_out[15] ;
input \ram/data_out[14] ;
input \ram/data_out[13] ;
input \ram/data_out[12] ;
input \ram/data_out[11] ;
input \ram/data_out[10] ;
input \ram/data_out[9] ;
input \ram/data_out[8] ;
input \ram/data_out[7] ;
input \ram/data_out[6] ;
input \ram/data_out[5] ;
input \ram/data_out[4] ;
input \ram/data_out[3] ;
input \ram/data_out[2] ;
input \ram/data_out[1] ;
input \ram/data_out[0] ;
input CLK_inter;
input tms_pad_i;
input tck_pad_i;
input tdi_pad_i;
output tdo_pad_o;

wire \CM[7] ;
wire \CM[6] ;
wire \CM[5] ;
wire \CM[4] ;
wire \CM[3] ;
wire \CM[2] ;
wire \CM[1] ;
wire \CM[0] ;
wire \cnt[3] ;
wire \cnt[2] ;
wire \cnt[1] ;
wire \cnt[0] ;
wire \mcData[63] ;
wire \mcData[62] ;
wire \mcData[61] ;
wire \mcData[60] ;
wire \mcData[59] ;
wire \mcData[58] ;
wire \mcData[57] ;
wire \mcData[56] ;
wire \mcData[55] ;
wire \mcData[54] ;
wire \mcData[53] ;
wire \mcData[52] ;
wire \mcData[51] ;
wire \mcData[50] ;
wire \mcData[49] ;
wire \mcData[48] ;
wire \mcData[47] ;
wire \mcData[46] ;
wire \mcData[45] ;
wire \mcData[44] ;
wire \mcData[43] ;
wire \mcData[42] ;
wire \mcData[41] ;
wire \mcData[40] ;
wire \mcData[39] ;
wire \mcData[38] ;
wire \mcData[37] ;
wire \mcData[36] ;
wire \mcData[35] ;
wire \mcData[34] ;
wire \mcData[33] ;
wire \mcData[32] ;
wire \mcData[31] ;
wire \mcData[30] ;
wire \mcData[29] ;
wire \mcData[28] ;
wire \mcData[27] ;
wire \mcData[26] ;
wire \mcData[25] ;
wire \mcData[24] ;
wire \mcData[23] ;
wire \mcData[22] ;
wire \mcData[21] ;
wire \mcData[20] ;
wire \mcData[19] ;
wire \mcData[18] ;
wire \mcData[17] ;
wire \mcData[16] ;
wire \mcData[15] ;
wire \mcData[14] ;
wire \mcData[13] ;
wire \mcData[12] ;
wire \mcData[11] ;
wire \mcData[10] ;
wire \mcData[9] ;
wire \mcData[8] ;
wire \mcData[7] ;
wire \mcData[6] ;
wire \mcData[5] ;
wire \mcData[4] ;
wire \mcData[3] ;
wire \mcData[2] ;
wire \mcData[1] ;
wire \mcData[0] ;
wire \ram/data_in[63] ;
wire \ram/data_in[62] ;
wire \ram/data_in[61] ;
wire \ram/data_in[60] ;
wire \ram/data_in[59] ;
wire \ram/data_in[58] ;
wire \ram/data_in[57] ;
wire \ram/data_in[56] ;
wire \ram/data_in[55] ;
wire \ram/data_in[54] ;
wire \ram/data_in[53] ;
wire \ram/data_in[52] ;
wire \ram/data_in[51] ;
wire \ram/data_in[50] ;
wire \ram/data_in[49] ;
wire \ram/data_in[48] ;
wire \ram/data_in[47] ;
wire \ram/data_in[46] ;
wire \ram/data_in[45] ;
wire \ram/data_in[44] ;
wire \ram/data_in[43] ;
wire \ram/data_in[42] ;
wire \ram/data_in[41] ;
wire \ram/data_in[40] ;
wire \ram/data_in[39] ;
wire \ram/data_in[38] ;
wire \ram/data_in[37] ;
wire \ram/data_in[36] ;
wire \ram/data_in[35] ;
wire \ram/data_in[34] ;
wire \ram/data_in[33] ;
wire \ram/data_in[32] ;
wire \ram/data_in[31] ;
wire \ram/data_in[30] ;
wire \ram/data_in[29] ;
wire \ram/data_in[28] ;
wire \ram/data_in[27] ;
wire \ram/data_in[26] ;
wire \ram/data_in[25] ;
wire \ram/data_in[24] ;
wire \ram/data_in[23] ;
wire \ram/data_in[22] ;
wire \ram/data_in[21] ;
wire \ram/data_in[20] ;
wire \ram/data_in[19] ;
wire \ram/data_in[18] ;
wire \ram/data_in[17] ;
wire \ram/data_in[16] ;
wire \ram/data_in[15] ;
wire \ram/data_in[14] ;
wire \ram/data_in[13] ;
wire \ram/data_in[12] ;
wire \ram/data_in[11] ;
wire \ram/data_in[10] ;
wire \ram/data_in[9] ;
wire \ram/data_in[8] ;
wire \ram/data_in[7] ;
wire \ram/data_in[6] ;
wire \ram/data_in[5] ;
wire \ram/data_in[4] ;
wire \ram/data_in[3] ;
wire \ram/data_in[2] ;
wire \ram/data_in[1] ;
wire \ram/data_in[0] ;
wire \ram/data_out[63] ;
wire \ram/data_out[62] ;
wire \ram/data_out[61] ;
wire \ram/data_out[60] ;
wire \ram/data_out[59] ;
wire \ram/data_out[58] ;
wire \ram/data_out[57] ;
wire \ram/data_out[56] ;
wire \ram/data_out[55] ;
wire \ram/data_out[54] ;
wire \ram/data_out[53] ;
wire \ram/data_out[52] ;
wire \ram/data_out[51] ;
wire \ram/data_out[50] ;
wire \ram/data_out[49] ;
wire \ram/data_out[48] ;
wire \ram/data_out[47] ;
wire \ram/data_out[46] ;
wire \ram/data_out[45] ;
wire \ram/data_out[44] ;
wire \ram/data_out[43] ;
wire \ram/data_out[42] ;
wire \ram/data_out[41] ;
wire \ram/data_out[40] ;
wire \ram/data_out[39] ;
wire \ram/data_out[38] ;
wire \ram/data_out[37] ;
wire \ram/data_out[36] ;
wire \ram/data_out[35] ;
wire \ram/data_out[34] ;
wire \ram/data_out[33] ;
wire \ram/data_out[32] ;
wire \ram/data_out[31] ;
wire \ram/data_out[30] ;
wire \ram/data_out[29] ;
wire \ram/data_out[28] ;
wire \ram/data_out[27] ;
wire \ram/data_out[26] ;
wire \ram/data_out[25] ;
wire \ram/data_out[24] ;
wire \ram/data_out[23] ;
wire \ram/data_out[22] ;
wire \ram/data_out[21] ;
wire \ram/data_out[20] ;
wire \ram/data_out[19] ;
wire \ram/data_out[18] ;
wire \ram/data_out[17] ;
wire \ram/data_out[16] ;
wire \ram/data_out[15] ;
wire \ram/data_out[14] ;
wire \ram/data_out[13] ;
wire \ram/data_out[12] ;
wire \ram/data_out[11] ;
wire \ram/data_out[10] ;
wire \ram/data_out[9] ;
wire \ram/data_out[8] ;
wire \ram/data_out[7] ;
wire \ram/data_out[6] ;
wire \ram/data_out[5] ;
wire \ram/data_out[4] ;
wire \ram/data_out[3] ;
wire \ram/data_out[2] ;
wire \ram/data_out[1] ;
wire \ram/data_out[0] ;
wire CLK_inter;
wire tms_pad_i;
wire tck_pad_i;
wire tdi_pad_i;
wire tdo_pad_o;
wire tms_i_c;
wire tck_i_c;
wire tdi_i_c;
wire tdo_o_c;
wire [9:0] control0;
wire gao_jtag_tck;
wire gao_jtag_reset;
wire run_test_idle_er1;
wire run_test_idle_er2;
wire shift_dr_capture_dr;
wire update_dr;
wire pause_dr;
wire enable_er1;
wire enable_er2;
wire gao_jtag_tdi;
wire tdo_er1;

IBUF tms_ibuf (
    .I(tms_pad_i),
    .O(tms_i_c)
);

IBUF tck_ibuf (
    .I(tck_pad_i),
    .O(tck_i_c)
);

IBUF tdi_ibuf (
    .I(tdi_pad_i),
    .O(tdi_i_c)
);

OBUF tdo_obuf (
    .I(tdo_o_c),
    .O(tdo_pad_o)
);

GW_JTAG  u_gw_jtag(
    .tms_pad_i(tms_i_c),
    .tck_pad_i(tck_i_c),
    .tdi_pad_i(tdi_i_c),
    .tdo_pad_o(tdo_o_c),
    .tck_o(gao_jtag_tck),
    .test_logic_reset_o(gao_jtag_reset),
    .run_test_idle_er1_o(run_test_idle_er1),
    .run_test_idle_er2_o(run_test_idle_er2),
    .shift_dr_capture_dr_o(shift_dr_capture_dr),
    .update_dr_o(update_dr),
    .pause_dr_o(pause_dr),
    .enable_er1_o(enable_er1),
    .enable_er2_o(enable_er2),
    .tdi_o(gao_jtag_tdi),
    .tdo_er1_i(tdo_er1),
    .tdo_er2_i(1'b0)
);

gw_con_top  u_icon_top(
    .tck_i(gao_jtag_tck),
    .tdi_i(gao_jtag_tdi),
    .tdo_o(tdo_er1),
    .rst_i(gao_jtag_reset),
    .control0(control0[9:0]),
    .enable_i(enable_er1),
    .shift_dr_capture_dr_i(shift_dr_capture_dr),
    .update_dr_i(update_dr)
);

ao_top u_ao_top(
    .control(control0[9:0]),
    .data_i({\CM[7] ,\CM[6] ,\CM[5] ,\CM[4] ,\CM[3] ,\CM[2] ,\CM[1] ,\CM[0] ,\cnt[3] ,\cnt[2] ,\cnt[1] ,\cnt[0] ,\mcData[63] ,\mcData[62] ,\mcData[61] ,\mcData[60] ,\mcData[59] ,\mcData[58] ,\mcData[57] ,\mcData[56] ,\mcData[55] ,\mcData[54] ,\mcData[53] ,\mcData[52] ,\mcData[51] ,\mcData[50] ,\mcData[49] ,\mcData[48] ,\mcData[47] ,\mcData[46] ,\mcData[45] ,\mcData[44] ,\mcData[43] ,\mcData[42] ,\mcData[41] ,\mcData[40] ,\mcData[39] ,\mcData[38] ,\mcData[37] ,\mcData[36] ,\mcData[35] ,\mcData[34] ,\mcData[33] ,\mcData[32] ,\mcData[31] ,\mcData[30] ,\mcData[29] ,\mcData[28] ,\mcData[27] ,\mcData[26] ,\mcData[25] ,\mcData[24] ,\mcData[23] ,\mcData[22] ,\mcData[21] ,\mcData[20] ,\mcData[19] ,\mcData[18] ,\mcData[17] ,\mcData[16] ,\mcData[15] ,\mcData[14] ,\mcData[13] ,\mcData[12] ,\mcData[11] ,\mcData[10] ,\mcData[9] ,\mcData[8] ,\mcData[7] ,\mcData[6] ,\mcData[5] ,\mcData[4] ,\mcData[3] ,\mcData[2] ,\mcData[1] ,\mcData[0] ,\ram/data_in[63] ,\ram/data_in[62] ,\ram/data_in[61] ,\ram/data_in[60] ,\ram/data_in[59] ,\ram/data_in[58] ,\ram/data_in[57] ,\ram/data_in[56] ,\ram/data_in[55] ,\ram/data_in[54] ,\ram/data_in[53] ,\ram/data_in[52] ,\ram/data_in[51] ,\ram/data_in[50] ,\ram/data_in[49] ,\ram/data_in[48] ,\ram/data_in[47] ,\ram/data_in[46] ,\ram/data_in[45] ,\ram/data_in[44] ,\ram/data_in[43] ,\ram/data_in[42] ,\ram/data_in[41] ,\ram/data_in[40] ,\ram/data_in[39] ,\ram/data_in[38] ,\ram/data_in[37] ,\ram/data_in[36] ,\ram/data_in[35] ,\ram/data_in[34] ,\ram/data_in[33] ,\ram/data_in[32] ,\ram/data_in[31] ,\ram/data_in[30] ,\ram/data_in[29] ,\ram/data_in[28] ,\ram/data_in[27] ,\ram/data_in[26] ,\ram/data_in[25] ,\ram/data_in[24] ,\ram/data_in[23] ,\ram/data_in[22] ,\ram/data_in[21] ,\ram/data_in[20] ,\ram/data_in[19] ,\ram/data_in[18] ,\ram/data_in[17] ,\ram/data_in[16] ,\ram/data_in[15] ,\ram/data_in[14] ,\ram/data_in[13] ,\ram/data_in[12] ,\ram/data_in[11] ,\ram/data_in[10] ,\ram/data_in[9] ,\ram/data_in[8] ,\ram/data_in[7] ,\ram/data_in[6] ,\ram/data_in[5] ,\ram/data_in[4] ,\ram/data_in[3] ,\ram/data_in[2] ,\ram/data_in[1] ,\ram/data_in[0] ,\ram/data_out[63] ,\ram/data_out[62] ,\ram/data_out[61] ,\ram/data_out[60] ,\ram/data_out[59] ,\ram/data_out[58] ,\ram/data_out[57] ,\ram/data_out[56] ,\ram/data_out[55] ,\ram/data_out[54] ,\ram/data_out[53] ,\ram/data_out[52] ,\ram/data_out[51] ,\ram/data_out[50] ,\ram/data_out[49] ,\ram/data_out[48] ,\ram/data_out[47] ,\ram/data_out[46] ,\ram/data_out[45] ,\ram/data_out[44] ,\ram/data_out[43] ,\ram/data_out[42] ,\ram/data_out[41] ,\ram/data_out[40] ,\ram/data_out[39] ,\ram/data_out[38] ,\ram/data_out[37] ,\ram/data_out[36] ,\ram/data_out[35] ,\ram/data_out[34] ,\ram/data_out[33] ,\ram/data_out[32] ,\ram/data_out[31] ,\ram/data_out[30] ,\ram/data_out[29] ,\ram/data_out[28] ,\ram/data_out[27] ,\ram/data_out[26] ,\ram/data_out[25] ,\ram/data_out[24] ,\ram/data_out[23] ,\ram/data_out[22] ,\ram/data_out[21] ,\ram/data_out[20] ,\ram/data_out[19] ,\ram/data_out[18] ,\ram/data_out[17] ,\ram/data_out[16] ,\ram/data_out[15] ,\ram/data_out[14] ,\ram/data_out[13] ,\ram/data_out[12] ,\ram/data_out[11] ,\ram/data_out[10] ,\ram/data_out[9] ,\ram/data_out[8] ,\ram/data_out[7] ,\ram/data_out[6] ,\ram/data_out[5] ,\ram/data_out[4] ,\ram/data_out[3] ,\ram/data_out[2] ,\ram/data_out[1] ,\ram/data_out[0] }),
    .clk_i(CLK_inter)
);

endmodule
