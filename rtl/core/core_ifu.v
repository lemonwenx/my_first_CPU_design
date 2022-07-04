 /*                                                                      
 Copyright 2022-2022 School of Physics and Technology， Wuhan University                
                                                                         
 Licensed under the Apache License, Version 2.0 (the "License");         
 you may not use this file except in compliance with the License.        
 You may obtain a copy of the License at                                 
                                                                         
     http://www.apache.org/licenses/LICENSE-2.0                          
                                                                         
  Unless required by applicable law or agreed to in writing, software    
 distributed under the License is distributed on an "AS IS" BASIS,       
 WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 See the License for the specific language governing permissions and     
 limitations under the License.                                          
 */      

//=====================================================================
// Designer   : 
//
// Description:
//  The IFU module to implement entire Instruction_fetch Stage
//
// ====================================================================
`include "core_defines.v"

module core_ifu #(
    /*parameters*/
) (
    /*instruction_fetch_signals*/
    output [`CPU_PC_SIZE-1:0] pc_addr,
    input  [`CPU_INSTR_SIZE-1:0] instr_fetched,

    /*reg_signals*/
    //output
    output [`CPU_PC_SIZE-1:0] pc_o,
    output [`CPU_INSTR_SIZE-1:0] instr_o,  

    /*control_signals*/


    /*basic_signals*/
    input clk,
    input rst_n
);
    
    /*TODO*/
    wire [`CPU_INSTR_SIZE-1:0] instr_fetched_me;
    wire [`CPU_PC_SIZE-1:0] pc_addr_me;
    wire [`CPU_PC_SIZE-1:0] pc_o_me;
    wire [`CPU_INSTR_SIZE-1:0] instr_o_me;

    assign instr_fetched_me = instr_fetched;
    assign pc_addr = pc_addr_me;
    //assign pc_o = pc_o_me;
    assign instr_o = instr_o_me;

    assign pc_addr_me = pc_o_me;
    assign pc_o_me = (instr_fetched_me == `Hold_Pc) ? pc_o_me : (pc_o_me + 4'b4);
    assign instr_o_me = 

    //暂时放下，有些地方没有搞明白


endmodule