// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module mat2mem (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        img_rows_V_dout,
        img_rows_V_empty_n,
        img_rows_V_read,
        img_cols_V_dout,
        img_cols_V_empty_n,
        img_cols_V_read,
        img_data_stream_0_V_dout,
        img_data_stream_0_V_empty_n,
        img_data_stream_0_V_read,
        img_data_stream_1_V_dout,
        img_data_stream_1_V_empty_n,
        img_data_stream_1_V_read,
        img_data_stream_2_V_dout,
        img_data_stream_2_V_empty_n,
        img_data_stream_2_V_read,
        m_axi_pMemPort_AWVALID,
        m_axi_pMemPort_AWREADY,
        m_axi_pMemPort_AWADDR,
        m_axi_pMemPort_AWID,
        m_axi_pMemPort_AWLEN,
        m_axi_pMemPort_AWSIZE,
        m_axi_pMemPort_AWBURST,
        m_axi_pMemPort_AWLOCK,
        m_axi_pMemPort_AWCACHE,
        m_axi_pMemPort_AWPROT,
        m_axi_pMemPort_AWQOS,
        m_axi_pMemPort_AWREGION,
        m_axi_pMemPort_AWUSER,
        m_axi_pMemPort_WVALID,
        m_axi_pMemPort_WREADY,
        m_axi_pMemPort_WDATA,
        m_axi_pMemPort_WSTRB,
        m_axi_pMemPort_WLAST,
        m_axi_pMemPort_WID,
        m_axi_pMemPort_WUSER,
        m_axi_pMemPort_ARVALID,
        m_axi_pMemPort_ARREADY,
        m_axi_pMemPort_ARADDR,
        m_axi_pMemPort_ARID,
        m_axi_pMemPort_ARLEN,
        m_axi_pMemPort_ARSIZE,
        m_axi_pMemPort_ARBURST,
        m_axi_pMemPort_ARLOCK,
        m_axi_pMemPort_ARCACHE,
        m_axi_pMemPort_ARPROT,
        m_axi_pMemPort_ARQOS,
        m_axi_pMemPort_ARREGION,
        m_axi_pMemPort_ARUSER,
        m_axi_pMemPort_RVALID,
        m_axi_pMemPort_RREADY,
        m_axi_pMemPort_RDATA,
        m_axi_pMemPort_RLAST,
        m_axi_pMemPort_RID,
        m_axi_pMemPort_RUSER,
        m_axi_pMemPort_RRESP,
        m_axi_pMemPort_BVALID,
        m_axi_pMemPort_BREADY,
        m_axi_pMemPort_BRESP,
        m_axi_pMemPort_BID,
        m_axi_pMemPort_BUSER,
        w,
        w_ap_vld,
        r_dout,
        r_empty_n,
        r_read,
        baseAddr_address0,
        baseAddr_ce0,
        baseAddr_q0
);

parameter    ap_ST_fsm_state1 = 4'd1;
parameter    ap_ST_fsm_state2 = 4'd2;
parameter    ap_ST_fsm_state3 = 4'd4;
parameter    ap_ST_fsm_state4 = 4'd8;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [31:0] img_rows_V_dout;
input   img_rows_V_empty_n;
output   img_rows_V_read;
input  [31:0] img_cols_V_dout;
input   img_cols_V_empty_n;
output   img_cols_V_read;
input  [7:0] img_data_stream_0_V_dout;
input   img_data_stream_0_V_empty_n;
output   img_data_stream_0_V_read;
input  [7:0] img_data_stream_1_V_dout;
input   img_data_stream_1_V_empty_n;
output   img_data_stream_1_V_read;
input  [7:0] img_data_stream_2_V_dout;
input   img_data_stream_2_V_empty_n;
output   img_data_stream_2_V_read;
output   m_axi_pMemPort_AWVALID;
input   m_axi_pMemPort_AWREADY;
output  [31:0] m_axi_pMemPort_AWADDR;
output  [0:0] m_axi_pMemPort_AWID;
output  [31:0] m_axi_pMemPort_AWLEN;
output  [2:0] m_axi_pMemPort_AWSIZE;
output  [1:0] m_axi_pMemPort_AWBURST;
output  [1:0] m_axi_pMemPort_AWLOCK;
output  [3:0] m_axi_pMemPort_AWCACHE;
output  [2:0] m_axi_pMemPort_AWPROT;
output  [3:0] m_axi_pMemPort_AWQOS;
output  [3:0] m_axi_pMemPort_AWREGION;
output  [0:0] m_axi_pMemPort_AWUSER;
output   m_axi_pMemPort_WVALID;
input   m_axi_pMemPort_WREADY;
output  [31:0] m_axi_pMemPort_WDATA;
output  [3:0] m_axi_pMemPort_WSTRB;
output   m_axi_pMemPort_WLAST;
output  [0:0] m_axi_pMemPort_WID;
output  [0:0] m_axi_pMemPort_WUSER;
output   m_axi_pMemPort_ARVALID;
input   m_axi_pMemPort_ARREADY;
output  [31:0] m_axi_pMemPort_ARADDR;
output  [0:0] m_axi_pMemPort_ARID;
output  [31:0] m_axi_pMemPort_ARLEN;
output  [2:0] m_axi_pMemPort_ARSIZE;
output  [1:0] m_axi_pMemPort_ARBURST;
output  [1:0] m_axi_pMemPort_ARLOCK;
output  [3:0] m_axi_pMemPort_ARCACHE;
output  [2:0] m_axi_pMemPort_ARPROT;
output  [3:0] m_axi_pMemPort_ARQOS;
output  [3:0] m_axi_pMemPort_ARREGION;
output  [0:0] m_axi_pMemPort_ARUSER;
input   m_axi_pMemPort_RVALID;
output   m_axi_pMemPort_RREADY;
input  [31:0] m_axi_pMemPort_RDATA;
input   m_axi_pMemPort_RLAST;
input  [0:0] m_axi_pMemPort_RID;
input  [0:0] m_axi_pMemPort_RUSER;
input  [1:0] m_axi_pMemPort_RRESP;
input   m_axi_pMemPort_BVALID;
output   m_axi_pMemPort_BREADY;
input  [1:0] m_axi_pMemPort_BRESP;
input  [0:0] m_axi_pMemPort_BID;
input  [0:0] m_axi_pMemPort_BUSER;
output  [31:0] w;
output   w_ap_vld;
input  [31:0] r_dout;
input   r_empty_n;
output   r_read;
output  [1:0] baseAddr_address0;
output   baseAddr_ce0;
input  [31:0] baseAddr_q0;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg img_rows_V_read;
reg img_cols_V_read;
reg img_data_stream_0_V_read;
reg img_data_stream_1_V_read;
reg img_data_stream_2_V_read;
reg m_axi_pMemPort_AWVALID;
reg m_axi_pMemPort_WVALID;
reg m_axi_pMemPort_BREADY;
reg w_ap_vld;
reg r_read;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [31:0] index;
reg    img_rows_V_blk_n;
reg    img_cols_V_blk_n;
reg    r_blk_n;
reg   [31:0] img_cols_V_read_reg_215;
reg    ap_block_state1;
reg   [31:0] r_read_reg_220;
reg   [31:0] local_rows_reg_226;
wire   [31:0] n_fu_190_p3;
reg   [31:0] n_reg_236;
wire    grp_dataflow_parent_loop_1_fu_145_img_data_stream_0_V_read;
wire    grp_dataflow_parent_loop_1_fu_145_img_data_stream_1_V_read;
wire    grp_dataflow_parent_loop_1_fu_145_img_data_stream_2_V_read;
wire    grp_dataflow_parent_loop_1_fu_145_m_axi_pMemPort_AWVALID;
wire   [31:0] grp_dataflow_parent_loop_1_fu_145_m_axi_pMemPort_AWADDR;
wire   [0:0] grp_dataflow_parent_loop_1_fu_145_m_axi_pMemPort_AWID;
wire   [31:0] grp_dataflow_parent_loop_1_fu_145_m_axi_pMemPort_AWLEN;
wire   [2:0] grp_dataflow_parent_loop_1_fu_145_m_axi_pMemPort_AWSIZE;
wire   [1:0] grp_dataflow_parent_loop_1_fu_145_m_axi_pMemPort_AWBURST;
wire   [1:0] grp_dataflow_parent_loop_1_fu_145_m_axi_pMemPort_AWLOCK;
wire   [3:0] grp_dataflow_parent_loop_1_fu_145_m_axi_pMemPort_AWCACHE;
wire   [2:0] grp_dataflow_parent_loop_1_fu_145_m_axi_pMemPort_AWPROT;
wire   [3:0] grp_dataflow_parent_loop_1_fu_145_m_axi_pMemPort_AWQOS;
wire   [3:0] grp_dataflow_parent_loop_1_fu_145_m_axi_pMemPort_AWREGION;
wire   [0:0] grp_dataflow_parent_loop_1_fu_145_m_axi_pMemPort_AWUSER;
wire    grp_dataflow_parent_loop_1_fu_145_m_axi_pMemPort_WVALID;
wire   [31:0] grp_dataflow_parent_loop_1_fu_145_m_axi_pMemPort_WDATA;
wire   [3:0] grp_dataflow_parent_loop_1_fu_145_m_axi_pMemPort_WSTRB;
wire    grp_dataflow_parent_loop_1_fu_145_m_axi_pMemPort_WLAST;
wire   [0:0] grp_dataflow_parent_loop_1_fu_145_m_axi_pMemPort_WID;
wire   [0:0] grp_dataflow_parent_loop_1_fu_145_m_axi_pMemPort_WUSER;
wire    grp_dataflow_parent_loop_1_fu_145_m_axi_pMemPort_ARVALID;
wire   [31:0] grp_dataflow_parent_loop_1_fu_145_m_axi_pMemPort_ARADDR;
wire   [0:0] grp_dataflow_parent_loop_1_fu_145_m_axi_pMemPort_ARID;
wire   [31:0] grp_dataflow_parent_loop_1_fu_145_m_axi_pMemPort_ARLEN;
wire   [2:0] grp_dataflow_parent_loop_1_fu_145_m_axi_pMemPort_ARSIZE;
wire   [1:0] grp_dataflow_parent_loop_1_fu_145_m_axi_pMemPort_ARBURST;
wire   [1:0] grp_dataflow_parent_loop_1_fu_145_m_axi_pMemPort_ARLOCK;
wire   [3:0] grp_dataflow_parent_loop_1_fu_145_m_axi_pMemPort_ARCACHE;
wire   [2:0] grp_dataflow_parent_loop_1_fu_145_m_axi_pMemPort_ARPROT;
wire   [3:0] grp_dataflow_parent_loop_1_fu_145_m_axi_pMemPort_ARQOS;
wire   [3:0] grp_dataflow_parent_loop_1_fu_145_m_axi_pMemPort_ARREGION;
wire   [0:0] grp_dataflow_parent_loop_1_fu_145_m_axi_pMemPort_ARUSER;
wire    grp_dataflow_parent_loop_1_fu_145_m_axi_pMemPort_RREADY;
wire    grp_dataflow_parent_loop_1_fu_145_m_axi_pMemPort_BREADY;
wire   [1:0] grp_dataflow_parent_loop_1_fu_145_baseAddr_address0;
wire    grp_dataflow_parent_loop_1_fu_145_baseAddr_ce0;
wire   [31:0] grp_dataflow_parent_loop_1_fu_145_baseAddr_d0;
wire    grp_dataflow_parent_loop_1_fu_145_baseAddr_we0;
wire    grp_dataflow_parent_loop_1_fu_145_ap_done;
wire    grp_dataflow_parent_loop_1_fu_145_ap_start;
wire    grp_dataflow_parent_loop_1_fu_145_ap_ready;
wire    grp_dataflow_parent_loop_1_fu_145_ap_idle;
reg    grp_dataflow_parent_loop_1_fu_145_ap_continue;
reg    ap_reg_grp_dataflow_parent_loop_1_fu_145_ap_start;
wire    ap_CS_fsm_state3;
wire    ap_CS_fsm_state4;
reg    ap_sync_reg_grp_dataflow_parent_loop_1_fu_145_ap_ready;
reg    ap_sync_grp_dataflow_parent_loop_1_fu_145_ap_ready;
wire   [31:0] n_1_fu_202_p3;
wire    ap_CS_fsm_state2;
wire   [30:0] tmp_fu_168_p4;
wire   [0:0] icmp_fu_178_p2;
wire   [31:0] tmp_9_i_fu_184_p2;
wire   [0:0] tmp_i_fu_198_p2;
reg   [3:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 4'd1;
#0 index = 32'd0;
#0 ap_reg_grp_dataflow_parent_loop_1_fu_145_ap_start = 1'b0;
#0 ap_sync_reg_grp_dataflow_parent_loop_1_fu_145_ap_ready = 1'b0;
end

dataflow_parent_loop_1 grp_dataflow_parent_loop_1_fu_145(
    .local_rows(local_rows_reg_226),
    .p_read(img_cols_V_read_reg_215),
    .img_data_stream_0_V_dout(img_data_stream_0_V_dout),
    .img_data_stream_0_V_empty_n(img_data_stream_0_V_empty_n),
    .img_data_stream_0_V_read(grp_dataflow_parent_loop_1_fu_145_img_data_stream_0_V_read),
    .img_data_stream_1_V_dout(img_data_stream_1_V_dout),
    .img_data_stream_1_V_empty_n(img_data_stream_1_V_empty_n),
    .img_data_stream_1_V_read(grp_dataflow_parent_loop_1_fu_145_img_data_stream_1_V_read),
    .img_data_stream_2_V_dout(img_data_stream_2_V_dout),
    .img_data_stream_2_V_empty_n(img_data_stream_2_V_empty_n),
    .img_data_stream_2_V_read(grp_dataflow_parent_loop_1_fu_145_img_data_stream_2_V_read),
    .r(r_read_reg_220),
    .m_axi_pMemPort_AWVALID(grp_dataflow_parent_loop_1_fu_145_m_axi_pMemPort_AWVALID),
    .m_axi_pMemPort_AWREADY(m_axi_pMemPort_AWREADY),
    .m_axi_pMemPort_AWADDR(grp_dataflow_parent_loop_1_fu_145_m_axi_pMemPort_AWADDR),
    .m_axi_pMemPort_AWID(grp_dataflow_parent_loop_1_fu_145_m_axi_pMemPort_AWID),
    .m_axi_pMemPort_AWLEN(grp_dataflow_parent_loop_1_fu_145_m_axi_pMemPort_AWLEN),
    .m_axi_pMemPort_AWSIZE(grp_dataflow_parent_loop_1_fu_145_m_axi_pMemPort_AWSIZE),
    .m_axi_pMemPort_AWBURST(grp_dataflow_parent_loop_1_fu_145_m_axi_pMemPort_AWBURST),
    .m_axi_pMemPort_AWLOCK(grp_dataflow_parent_loop_1_fu_145_m_axi_pMemPort_AWLOCK),
    .m_axi_pMemPort_AWCACHE(grp_dataflow_parent_loop_1_fu_145_m_axi_pMemPort_AWCACHE),
    .m_axi_pMemPort_AWPROT(grp_dataflow_parent_loop_1_fu_145_m_axi_pMemPort_AWPROT),
    .m_axi_pMemPort_AWQOS(grp_dataflow_parent_loop_1_fu_145_m_axi_pMemPort_AWQOS),
    .m_axi_pMemPort_AWREGION(grp_dataflow_parent_loop_1_fu_145_m_axi_pMemPort_AWREGION),
    .m_axi_pMemPort_AWUSER(grp_dataflow_parent_loop_1_fu_145_m_axi_pMemPort_AWUSER),
    .m_axi_pMemPort_WVALID(grp_dataflow_parent_loop_1_fu_145_m_axi_pMemPort_WVALID),
    .m_axi_pMemPort_WREADY(m_axi_pMemPort_WREADY),
    .m_axi_pMemPort_WDATA(grp_dataflow_parent_loop_1_fu_145_m_axi_pMemPort_WDATA),
    .m_axi_pMemPort_WSTRB(grp_dataflow_parent_loop_1_fu_145_m_axi_pMemPort_WSTRB),
    .m_axi_pMemPort_WLAST(grp_dataflow_parent_loop_1_fu_145_m_axi_pMemPort_WLAST),
    .m_axi_pMemPort_WID(grp_dataflow_parent_loop_1_fu_145_m_axi_pMemPort_WID),
    .m_axi_pMemPort_WUSER(grp_dataflow_parent_loop_1_fu_145_m_axi_pMemPort_WUSER),
    .m_axi_pMemPort_ARVALID(grp_dataflow_parent_loop_1_fu_145_m_axi_pMemPort_ARVALID),
    .m_axi_pMemPort_ARREADY(1'b0),
    .m_axi_pMemPort_ARADDR(grp_dataflow_parent_loop_1_fu_145_m_axi_pMemPort_ARADDR),
    .m_axi_pMemPort_ARID(grp_dataflow_parent_loop_1_fu_145_m_axi_pMemPort_ARID),
    .m_axi_pMemPort_ARLEN(grp_dataflow_parent_loop_1_fu_145_m_axi_pMemPort_ARLEN),
    .m_axi_pMemPort_ARSIZE(grp_dataflow_parent_loop_1_fu_145_m_axi_pMemPort_ARSIZE),
    .m_axi_pMemPort_ARBURST(grp_dataflow_parent_loop_1_fu_145_m_axi_pMemPort_ARBURST),
    .m_axi_pMemPort_ARLOCK(grp_dataflow_parent_loop_1_fu_145_m_axi_pMemPort_ARLOCK),
    .m_axi_pMemPort_ARCACHE(grp_dataflow_parent_loop_1_fu_145_m_axi_pMemPort_ARCACHE),
    .m_axi_pMemPort_ARPROT(grp_dataflow_parent_loop_1_fu_145_m_axi_pMemPort_ARPROT),
    .m_axi_pMemPort_ARQOS(grp_dataflow_parent_loop_1_fu_145_m_axi_pMemPort_ARQOS),
    .m_axi_pMemPort_ARREGION(grp_dataflow_parent_loop_1_fu_145_m_axi_pMemPort_ARREGION),
    .m_axi_pMemPort_ARUSER(grp_dataflow_parent_loop_1_fu_145_m_axi_pMemPort_ARUSER),
    .m_axi_pMemPort_RVALID(1'b0),
    .m_axi_pMemPort_RREADY(grp_dataflow_parent_loop_1_fu_145_m_axi_pMemPort_RREADY),
    .m_axi_pMemPort_RDATA(32'd0),
    .m_axi_pMemPort_RLAST(1'b0),
    .m_axi_pMemPort_RID(1'd0),
    .m_axi_pMemPort_RUSER(1'd0),
    .m_axi_pMemPort_RRESP(2'd0),
    .m_axi_pMemPort_BVALID(m_axi_pMemPort_BVALID),
    .m_axi_pMemPort_BREADY(grp_dataflow_parent_loop_1_fu_145_m_axi_pMemPort_BREADY),
    .m_axi_pMemPort_BRESP(m_axi_pMemPort_BRESP),
    .m_axi_pMemPort_BID(m_axi_pMemPort_BID),
    .m_axi_pMemPort_BUSER(m_axi_pMemPort_BUSER),
    .index(index),
    .baseAddr_address0(grp_dataflow_parent_loop_1_fu_145_baseAddr_address0),
    .baseAddr_ce0(grp_dataflow_parent_loop_1_fu_145_baseAddr_ce0),
    .baseAddr_d0(grp_dataflow_parent_loop_1_fu_145_baseAddr_d0),
    .baseAddr_q0(baseAddr_q0),
    .baseAddr_we0(grp_dataflow_parent_loop_1_fu_145_baseAddr_we0),
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .p_read_ap_vld(1'b1),
    .r_ap_vld(1'b1),
    .index_ap_vld(1'b1),
    .ap_done(grp_dataflow_parent_loop_1_fu_145_ap_done),
    .ap_start(grp_dataflow_parent_loop_1_fu_145_ap_start),
    .ap_ready(grp_dataflow_parent_loop_1_fu_145_ap_ready),
    .ap_idle(grp_dataflow_parent_loop_1_fu_145_ap_idle),
    .ap_continue(grp_dataflow_parent_loop_1_fu_145_ap_continue)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((grp_dataflow_parent_loop_1_fu_145_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_reg_grp_dataflow_parent_loop_1_fu_145_ap_start <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state3) | ((ap_sync_grp_dataflow_parent_loop_1_fu_145_ap_ready == 1'b0) & (1'b1 == ap_CS_fsm_state4)))) begin
            ap_reg_grp_dataflow_parent_loop_1_fu_145_ap_start <= 1'b1;
        end else if ((grp_dataflow_parent_loop_1_fu_145_ap_ready == 1'b1)) begin
            ap_reg_grp_dataflow_parent_loop_1_fu_145_ap_start <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_grp_dataflow_parent_loop_1_fu_145_ap_ready <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state4)) begin
            if ((grp_dataflow_parent_loop_1_fu_145_ap_done == 1'b1)) begin
                ap_sync_reg_grp_dataflow_parent_loop_1_fu_145_ap_ready <= 1'b0;
            end else if ((grp_dataflow_parent_loop_1_fu_145_ap_ready == 1'b1)) begin
                ap_sync_reg_grp_dataflow_parent_loop_1_fu_145_ap_ready <= 1'b1;
            end
        end
    end
end

always @ (posedge ap_clk) begin
    if ((~((ap_start == 1'b0) | (img_cols_V_empty_n == 1'b0) | (img_rows_V_empty_n == 1'b0) | (r_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        img_cols_V_read_reg_215 <= img_cols_V_dout;
        local_rows_reg_226 <= img_rows_V_dout;
        n_reg_236 <= n_fu_190_p3;
        r_read_reg_220 <= r_dout;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        index <= n_1_fu_202_p3;
    end
end

always @ (*) begin
    if (((grp_dataflow_parent_loop_1_fu_145_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((grp_dataflow_parent_loop_1_fu_145_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((ap_sync_reg_grp_dataflow_parent_loop_1_fu_145_ap_ready == 1'b0)) begin
        ap_sync_grp_dataflow_parent_loop_1_fu_145_ap_ready = grp_dataflow_parent_loop_1_fu_145_ap_ready;
    end else begin
        ap_sync_grp_dataflow_parent_loop_1_fu_145_ap_ready = 1'b1;
    end
end

always @ (*) begin
    if (((grp_dataflow_parent_loop_1_fu_145_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        grp_dataflow_parent_loop_1_fu_145_ap_continue = 1'b1;
    end else begin
        grp_dataflow_parent_loop_1_fu_145_ap_continue = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        img_cols_V_blk_n = img_cols_V_empty_n;
    end else begin
        img_cols_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (img_cols_V_empty_n == 1'b0) | (img_rows_V_empty_n == 1'b0) | (r_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        img_cols_V_read = 1'b1;
    end else begin
        img_cols_V_read = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        img_data_stream_0_V_read = grp_dataflow_parent_loop_1_fu_145_img_data_stream_0_V_read;
    end else begin
        img_data_stream_0_V_read = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        img_data_stream_1_V_read = grp_dataflow_parent_loop_1_fu_145_img_data_stream_1_V_read;
    end else begin
        img_data_stream_1_V_read = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        img_data_stream_2_V_read = grp_dataflow_parent_loop_1_fu_145_img_data_stream_2_V_read;
    end else begin
        img_data_stream_2_V_read = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        img_rows_V_blk_n = img_rows_V_empty_n;
    end else begin
        img_rows_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (img_cols_V_empty_n == 1'b0) | (img_rows_V_empty_n == 1'b0) | (r_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        img_rows_V_read = 1'b1;
    end else begin
        img_rows_V_read = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3))) begin
        m_axi_pMemPort_AWVALID = grp_dataflow_parent_loop_1_fu_145_m_axi_pMemPort_AWVALID;
    end else begin
        m_axi_pMemPort_AWVALID = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3))) begin
        m_axi_pMemPort_BREADY = grp_dataflow_parent_loop_1_fu_145_m_axi_pMemPort_BREADY;
    end else begin
        m_axi_pMemPort_BREADY = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3))) begin
        m_axi_pMemPort_WVALID = grp_dataflow_parent_loop_1_fu_145_m_axi_pMemPort_WVALID;
    end else begin
        m_axi_pMemPort_WVALID = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        r_blk_n = r_empty_n;
    end else begin
        r_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (img_cols_V_empty_n == 1'b0) | (img_rows_V_empty_n == 1'b0) | (r_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        r_read = 1'b1;
    end else begin
        r_read = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        w_ap_vld = 1'b1;
    end else begin
        w_ap_vld = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((ap_start == 1'b0) | (img_cols_V_empty_n == 1'b0) | (img_rows_V_empty_n == 1'b0) | (r_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((grp_dataflow_parent_loop_1_fu_145_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

always @ (*) begin
    ap_block_state1 = ((ap_start == 1'b0) | (img_cols_V_empty_n == 1'b0) | (img_rows_V_empty_n == 1'b0) | (r_empty_n == 1'b0) | (ap_done_reg == 1'b1));
end

assign baseAddr_address0 = grp_dataflow_parent_loop_1_fu_145_baseAddr_address0;

assign baseAddr_ce0 = grp_dataflow_parent_loop_1_fu_145_baseAddr_ce0;

assign grp_dataflow_parent_loop_1_fu_145_ap_start = ap_reg_grp_dataflow_parent_loop_1_fu_145_ap_start;

assign icmp_fu_178_p2 = (($signed(tmp_fu_168_p4) < $signed(31'd1)) ? 1'b1 : 1'b0);

assign m_axi_pMemPort_ARADDR = 32'd0;

assign m_axi_pMemPort_ARBURST = 2'd0;

assign m_axi_pMemPort_ARCACHE = 4'd0;

assign m_axi_pMemPort_ARID = 1'd0;

assign m_axi_pMemPort_ARLEN = 32'd0;

assign m_axi_pMemPort_ARLOCK = 2'd0;

assign m_axi_pMemPort_ARPROT = 3'd0;

assign m_axi_pMemPort_ARQOS = 4'd0;

assign m_axi_pMemPort_ARREGION = 4'd0;

assign m_axi_pMemPort_ARSIZE = 3'd0;

assign m_axi_pMemPort_ARUSER = 1'd0;

assign m_axi_pMemPort_ARVALID = 1'b0;

assign m_axi_pMemPort_AWADDR = grp_dataflow_parent_loop_1_fu_145_m_axi_pMemPort_AWADDR;

assign m_axi_pMemPort_AWBURST = grp_dataflow_parent_loop_1_fu_145_m_axi_pMemPort_AWBURST;

assign m_axi_pMemPort_AWCACHE = grp_dataflow_parent_loop_1_fu_145_m_axi_pMemPort_AWCACHE;

assign m_axi_pMemPort_AWID = grp_dataflow_parent_loop_1_fu_145_m_axi_pMemPort_AWID;

assign m_axi_pMemPort_AWLEN = grp_dataflow_parent_loop_1_fu_145_m_axi_pMemPort_AWLEN;

assign m_axi_pMemPort_AWLOCK = grp_dataflow_parent_loop_1_fu_145_m_axi_pMemPort_AWLOCK;

assign m_axi_pMemPort_AWPROT = grp_dataflow_parent_loop_1_fu_145_m_axi_pMemPort_AWPROT;

assign m_axi_pMemPort_AWQOS = grp_dataflow_parent_loop_1_fu_145_m_axi_pMemPort_AWQOS;

assign m_axi_pMemPort_AWREGION = grp_dataflow_parent_loop_1_fu_145_m_axi_pMemPort_AWREGION;

assign m_axi_pMemPort_AWSIZE = grp_dataflow_parent_loop_1_fu_145_m_axi_pMemPort_AWSIZE;

assign m_axi_pMemPort_AWUSER = grp_dataflow_parent_loop_1_fu_145_m_axi_pMemPort_AWUSER;

assign m_axi_pMemPort_RREADY = 1'b0;

assign m_axi_pMemPort_WDATA = grp_dataflow_parent_loop_1_fu_145_m_axi_pMemPort_WDATA;

assign m_axi_pMemPort_WID = grp_dataflow_parent_loop_1_fu_145_m_axi_pMemPort_WID;

assign m_axi_pMemPort_WLAST = grp_dataflow_parent_loop_1_fu_145_m_axi_pMemPort_WLAST;

assign m_axi_pMemPort_WSTRB = grp_dataflow_parent_loop_1_fu_145_m_axi_pMemPort_WSTRB;

assign m_axi_pMemPort_WUSER = grp_dataflow_parent_loop_1_fu_145_m_axi_pMemPort_WUSER;

assign n_1_fu_202_p3 = ((tmp_i_fu_198_p2[0:0] === 1'b1) ? index : n_reg_236);

assign n_fu_190_p3 = ((icmp_fu_178_p2[0:0] === 1'b1) ? tmp_9_i_fu_184_p2 : 32'd0);

assign tmp_9_i_fu_184_p2 = (index + 32'd1);

assign tmp_fu_168_p4 = {{index[31:1]}};

assign tmp_i_fu_198_p2 = ((n_reg_236 == r_read_reg_220) ? 1'b1 : 1'b0);

assign w = ((tmp_i_fu_198_p2[0:0] === 1'b1) ? index : n_reg_236);

endmodule //mat2mem