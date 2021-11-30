`include "miriscv_defines.v"

module miriscv_core (
  // clock, reset
  input clk_i,
  input arstn_i,

  // instruction memory interface
  input         [31:0]  instr_rdata_i,
  output logic  [31:0]  instr_addr_o,

  // data memory interface
  input         [31:0]  data_rdata_i,
  output  logic         data_req_o,
  output  logic         data_we_o,
  output  logic [3:0]   data_be_o,
  output  logic [31:0]  data_addr_o,
  output  logic [31:0]  data_wdata_o,

  // RVFI signals
  output  logic         rvfi_valid_o,
  output  logic [63:0]  rvfi_order_o,
  output  logic [31:0]  rvfi_insn_o,
  output  logic         rvfi_trap_o,
  output  logic         rvfi_halt_o,
  output  logic         rvfi_intr_o,
  output  logic [1:0]   rvfi_mode_o,
  output  logic [1:0]   rvfi_ixl_o,
  output  logic [4:0]   rvfi_rs1_addr_o,
  output  logic [4:0]   rvfi_rs2_addr_o,
  output  logic [31:0]  rvfi_rs1_rdata_o,
  output  logic [31:0]  rvfi_rs2_rdata_o,
  output  logic [4:0]   rvfi_rd_addr_o,
  output  logic [31:0]  rvfi_rd_wdata_o,
  output  logic [31:0]  rvfi_pc_rdata_o,
  output  logic [31:0]  rvfi_pc_wdata_o,
  output  logic [31:0]  rvfi_mem_addr_o,
  output  logic [3:0]   rvfi_mem_rmask_o,
  output  logic [3:0]   rvfi_mem_wmask_o,
  output  logic [31:0]  rvfi_mem_rdata_o,
  output  logic [31:0]  rvfi_mem_wdata_o
);

endmodule
