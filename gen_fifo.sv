//***********************************************************************//
//  Copyright (c) YotStyle Reserved                                      //
//  YotStyle Proprietary                                                 //
//                                                                       //
//  FILE information :                                                   //
//  ------------------                                                   //
//  File name      : gen_fifo.sv                                         //
//  Creator        : YotStyle                                            //
//  Last Update by :                                                     //
//  Last Update    :                                                     //
//                                                                       //
//  Description :                                                        //
//  -------------                                                        //
//                                                                       //
//  Assumptions :                                                        //
//  -------------                                                        //
//***********************************************************************//

module gen_fifo #(
    parameter W          = 8, //fifo width
    parameter D          = 4, // fifo depth
    parameter WR_ON_FULL = 0, //allows write when fifo is full and read operation happens 
    parameter CNT_W      = $clog2(D+1), //used space width
    )(  
    input  logic             clk,
    input  logic             rst_n,
    input  logic             clear,      // Clears FIFO - it will become empty
    input  logic [CNT_W-1:0] full_thr,   // Full indication will be set when there are this number of free slots
    output logic [CNT_W-1:0] used_space, // Number of entries currently used 
    // Data in             
    input  logic             wr_en,
    input  logic [W-1:0]     wr_data,
    output logic             wr_full,    // FIFO has full_thr or less free slots (can write until FIFO is physically full)
    // Data out                         
    input  logic             rd_en,
    output logic [W-1:0]     rd_data,
    output logic             rd_empty
    );
    
    logic full_int;
    logic wr_int;
    logic rd_int;
    logic [CNT_W-1:0] used_space_nxt;
    
    TODO
    
    
    
