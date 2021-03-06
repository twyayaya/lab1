// Generated by stratus_hls 19.12-s100  (91710.131054)
// Mon Apr 26 12:58:10 2021
// from ../SobelFilter.cpp

`timescale 1ps / 1ps

      
module SobelFilter(i_clk, i_rst, i_r_busy, i_r_vld, i_r_data, i_g_busy, i_g_vld, i_g_data, i_b_busy, i_b_vld, i_b_data, o_result_r_busy, o_result_r_vld, o_result_r_data, o_result_g_busy, o_result_g_vld, o_result_g_data, o_result_b_busy, o_result_b_vld, o_result_b_data);

      input i_clk;
      input i_rst;
      input i_r_vld;
      input [7:0] i_r_data;
      input i_g_vld;
      input [7:0] i_g_data;
      input i_b_vld;
      input [7:0] i_b_data;
      input o_result_r_busy;
      input o_result_g_busy;
      input o_result_b_busy;
      output i_r_busy;
      output i_g_busy;
      output i_b_busy;
      output o_result_r_vld;
      output [7:0] o_result_r_data;
      reg [7:0] o_result_r_data;
      output o_result_g_vld;
      output [7:0] o_result_g_data;
      reg [7:0] o_result_g_data;
      output o_result_b_vld;
      output [7:0] o_result_b_data;
      reg [7:0] o_result_b_data;
      reg o_result_b_m_req_m_prev_trig_req;
      reg o_result_b_m_unacked_req;
      wire SobelFilter_Xor_1Ux1U_1U_1_7_out1;
      wire SobelFilter_Or_1Ux1U_1U_4_8_out1;
      reg o_result_g_m_req_m_prev_trig_req;
      reg o_result_g_m_unacked_req;
      wire SobelFilter_Xor_1Ux1U_1U_1_4_out1;
      wire SobelFilter_Or_1Ux1U_1U_4_5_out1;
      reg o_result_r_m_req_m_prev_trig_req;
      reg o_result_r_m_unacked_req;
      wire SobelFilter_Xor_1Ux1U_1U_1_1_out1;
      wire SobelFilter_Or_1Ux1U_1U_4_2_out1;
      reg SobelFilter_N_Muxb_1_2_11_4_16_out1;
      reg i_b_m_unvalidated_req;
      wire SobelFilter_gen_busy_r_4_32_gnew_req_i1;
      wire SobelFilter_gen_busy_r_4_32_gdiv_i3;
      wire SobelFilter_gen_busy_r_4_32_gen_busy_0_i_r_m_data_is_invalid_next;
      reg SobelFilter_N_Muxb_1_2_11_4_13_out1;
      reg i_g_m_unvalidated_req;
      wire SobelFilter_gen_busy_r_4_31_gnew_req_i1;
      wire SobelFilter_gen_busy_r_4_31_gdiv_i3;
      wire SobelFilter_gen_busy_r_4_31_gen_busy_0_i_r_m_data_is_invalid_next;
      reg SobelFilter_N_Muxb_1_2_11_4_10_out1;
      reg i_r_m_unvalidated_req;
      wire SobelFilter_gen_busy_r_4_30_gnew_req_i1;
      wire SobelFilter_gen_busy_r_4_30_gdiv_i3;
      wire SobelFilter_gen_busy_r_4_30_gen_busy_0_i_r_m_data_is_invalid_next;
      reg[3:0] global_state_next;
      /*signed*/reg[11:0] SobelFilter_Add2Mul2s12u8u12_4_21_in1;
      reg[7:0] SobelFilter_Add2Mul2s12u8u12_4_21_in2;
      reg[11:0] SobelFilter_Add2Mul2s12u8u12_4_21_in3;
      reg gs_ctrl0;
      wire[3:0] SobelFilter_Add2u2Mul2i3u2_4_18_out1;
      reg[11:0] s_reg_25;
      wire[1:0] SobelFilter_Add2i1u2_4_19_out1;
      wire[1:0] SobelFilter_Add2i1u2_4_20_out1;
      reg[1:0] s_reg_23;
      wire[11:0] SobelFilter_Add2Mul2s12u8u12_4_21_out1;
      wire[11:0] SobelFilter_Add2Mul2s12u8u12_4_25_out1;
      reg[1:0] s_reg_24;
      reg[1:0] s_reg_19;
      wire SobelFilter_And_1Ux1U_1U_4_26_out1;
      wire SobelFilter_And_1Ux1U_1U_4_27_out1;
      wire SobelFilter_And_1Ux1U_1U_4_28_out1;
      wire[2:0] SobelFilter_gen_busy_r_4_30_out1;
      wire[2:0] SobelFilter_gen_busy_r_4_31_out1;
      wire[2:0] SobelFilter_gen_busy_r_4_32_out1;
      wire SobelFilter_Not_1U_1U_1_9_out1;
      reg o_result_b_m_req_m_trig_req;
      wire SobelFilter_Not_1U_1U_1_6_out1;
      reg o_result_g_m_req_m_trig_req;
      wire SobelFilter_Not_1U_1U_1_3_out1;
      reg o_result_r_m_req_m_trig_req;
      reg i_b_m_busy_req_0;
      reg i_g_m_busy_req_0;
      reg i_r_m_busy_req_0;
      reg[11:0] s_reg_22;
      wire SobelFilter_Lti3u2_4_23_out1;
      wire SobelFilter_Lti3u2_4_22_out1;
      reg[11:0] s_reg_21;
      reg[11:0] s_reg_20;
      reg[3:0] global_state;
      reg stall0;
      wire[3:0] filter_in1;
      wire[31:0] filter_out1;

         SobelFilter_ROM_9X32_filter filter(
                                       .in1( filter_in1 ),
                                       .out1( filter_out1 ),
                                       .clk( i_clk )
                                     );

         // resource: mux_8bx2i0c
         // resource: regr_en_8
         always @(posedge i_clk)
          begin :drive_o_result_b_data
            case (stall0) 

               1'b1:                begin
               end
               
               1'b0:                begin
                  case (global_state) 

                     4'd03:                      begin
                        o_result_b_data <= i_b_data;
                     end
                     
                     4'd07:                      begin
                        o_result_b_data <= s_reg_20[11:4];
                     end
                     
                  endcase

               end
               
            endcase

         end

         // resource: mux_8bx2i0c
         // resource: regr_en_8
         always @(posedge i_clk)
          begin :drive_o_result_g_data
            case (stall0) 

               1'b1:                begin
               end
               
               1'b0:                begin
                  case (global_state) 

                     4'd02:                      begin
                        o_result_g_data <= i_g_data;
                     end
                     
                     4'd06:                      begin
                        o_result_g_data <= s_reg_21[11:4];
                     end
                     
                  endcase

               end
               
            endcase

         end

         // resource: mux_8bx2i0c
         // resource: regr_en_8
         always @(posedge i_clk)
          begin :drive_o_result_r_data
            case (stall0) 

               1'b1:                begin
               end
               
               1'b0:                begin
                  case (global_state) 

                     4'd01:                      begin
                        o_result_r_data <= i_r_data;
                     end
                     
                     4'd05:                      begin
                        if (!SobelFilter_Lti3u2_4_23_out1 && !SobelFilter_Lti3u2_4_22_out1) begin
                           o_result_r_data <= s_reg_22[11:4];
                        end
                     end
                     
                  endcase

               end
               
            endcase

         end

         // resource: mux_1bx2i2c
         // resource: regr_en_ss_1
         always @(posedge i_clk)
          begin :drive_i_r_m_busy_req_0
            if (i_rst == 1'b0) begin
               i_r_m_busy_req_0 <= 1'd1;
            end
            else begin
               case (stall0) 

                  1'b1:                   begin
                  end
                  
                  1'b0:                   begin
                     case (global_state) 

                        4'd00, 4'd09:                         begin
                           i_r_m_busy_req_0 <= 1'd0;
                        end
                        
                        4'd01:                         begin
                           i_r_m_busy_req_0 <= 1'd1;
                        end
                        
                        4'd05:                         begin
                           if (SobelFilter_Lti3u2_4_23_out1) begin
                              i_r_m_busy_req_0 <= 1'd0;
                           end
                           else begin
                              if (SobelFilter_Lti3u2_4_22_out1) begin
                                 i_r_m_busy_req_0 <= 1'd0;
                              end
                           end
                        end
                        
                     endcase

                  end
                  
               endcase

            end
         end

         // resource: mux_1bx2i2c
         // resource: regr_en_ss_1
         always @(posedge i_clk)
          begin :drive_i_g_m_busy_req_0
            if (i_rst == 1'b0) begin
               i_g_m_busy_req_0 <= 1'd1;
            end
            else begin
               case (stall0) 

                  1'b1:                   begin
                  end
                  
                  1'b0:                   begin
                     case (global_state) 

                        4'd01:                         begin
                           i_g_m_busy_req_0 <= 1'd0;
                        end
                        
                        4'd02:                         begin
                           i_g_m_busy_req_0 <= 1'd1;
                        end
                        
                     endcase

                  end
                  
               endcase

            end
         end

         // resource: mux_1bx2i2c
         // resource: regr_en_ss_1
         always @(posedge i_clk)
          begin :drive_i_b_m_busy_req_0
            if (i_rst == 1'b0) begin
               i_b_m_busy_req_0 <= 1'd1;
            end
            else begin
               case (stall0) 

                  1'b1:                   begin
                  end
                  
                  1'b0:                   begin
                     case (global_state) 

                        4'd02:                         begin
                           i_b_m_busy_req_0 <= 1'd0;
                        end
                        
                        4'd03:                         begin
                           i_b_m_busy_req_0 <= 1'd1;
                        end
                        
                     endcase

                  end
                  
               endcase

            end
         end

         // resource: regr_en_sc_1
         always @(posedge i_clk)
          begin :drive_o_result_r_m_req_m_trig_req
            if (i_rst == 1'b0) begin
               o_result_r_m_req_m_trig_req <= 1'd0;
            end
            else begin
               case (stall0) 

                  1'b1:                   begin
                  end
                  
                  1'b0:                   begin
                     case (global_state) 

                        4'd05:                         begin
                           if (!SobelFilter_Lti3u2_4_23_out1 && !SobelFilter_Lti3u2_4_22_out1) begin
                              o_result_r_m_req_m_trig_req <= SobelFilter_Not_1U_1U_1_3_out1;
                           end
                        end
                        
                     endcase

                  end
                  
               endcase

            end
         end

         // resource: regr_en_sc_1
         always @(posedge i_clk)
          begin :drive_o_result_g_m_req_m_trig_req
            if (i_rst == 1'b0) begin
               o_result_g_m_req_m_trig_req <= 1'd0;
            end
            else begin
               case (stall0) 

                  1'b1:                   begin
                  end
                  
                  1'b0:                   begin
                     case (global_state) 

                        4'd06:                         begin
                           o_result_g_m_req_m_trig_req <= SobelFilter_Not_1U_1U_1_6_out1;
                        end
                        
                     endcase

                  end
                  
               endcase

            end
         end

         // resource: regr_en_sc_1
         always @(posedge i_clk)
          begin :drive_o_result_b_m_req_m_trig_req
            if (i_rst == 1'b0) begin
               o_result_b_m_req_m_trig_req <= 1'd0;
            end
            else begin
               case (stall0) 

                  1'b1:                   begin
                  end
                  
                  1'b0:                   begin
                     case (global_state) 

                        4'd07:                         begin
                           o_result_b_m_req_m_trig_req <= SobelFilter_Not_1U_1U_1_9_out1;
                        end
                        
                     endcase

                  end
                  
               endcase

            end
         end

         // resource: mux_1bx7i1c
         always @(SobelFilter_And_1Ux1U_1U_4_26_out1 or SobelFilter_And_1Ux1U_1U_4_27_out1 or SobelFilter_And_1Ux1U_1U_4_28_out1 or SobelFilter_gen_busy_r_4_30_out1[0] or SobelFilter_gen_busy_r_4_31_out1[0] or SobelFilter_gen_busy_r_4_32_out1[0] or global_state)
          begin :drive_stall0
            case (global_state) 

               4'd01:                begin
                  stall0 = SobelFilter_gen_busy_r_4_30_out1[0];
               end
               
               4'd02:                begin
                  stall0 = SobelFilter_gen_busy_r_4_31_out1[0];
               end
               
               4'd03:                begin
                  stall0 = SobelFilter_gen_busy_r_4_32_out1[0];
               end
               
               4'd06:                begin
                  stall0 = SobelFilter_And_1Ux1U_1U_4_26_out1;
               end
               
               4'd07:                begin
                  stall0 = SobelFilter_And_1Ux1U_1U_4_27_out1;
               end
               
               4'd08:                begin
                  stall0 = SobelFilter_And_1Ux1U_1U_4_28_out1;
               end
               
               default:                begin
                  stall0 = 1'b0;
               end
               
            endcase

         end

         // resource: mux_2bx2i1c
         // resource: regr_en_2
         always @(posedge i_clk)
          begin :drive_s_reg_19
            case (stall0) 

               1'b1:                begin
               end
               
               1'b0:                begin
                  case (global_state) 

                     4'd00, 4'd09:                      begin
                        s_reg_19 <= 2'd0;
                     end
                     
                     4'd05:                      begin
                        if (SobelFilter_Lti3u2_4_23_out1) begin
                        end
                        else begin
                           s_reg_19 <= s_reg_24;
                        end
                     end
                     
                  endcase

               end
               
            endcase

         end

         // resource: mux_12bx2i1c
         // resource: regr_en_12
         always @(posedge i_clk)
          begin :drive_s_reg_20
            case (stall0) 

               1'b1:                begin
               end
               
               1'b0:                begin
                  case (global_state) 

                     4'd00, 4'd09:                      begin
                        s_reg_20 <= 12'd0000;
                     end
                     
                     4'd05:                      begin
                        s_reg_20 <= SobelFilter_Add2Mul2s12u8u12_4_25_out1;
                     end
                     
                  endcase

               end
               
            endcase

         end

         // resource: mux_12bx2i1c
         // resource: regr_en_12
         always @(posedge i_clk)
          begin :drive_s_reg_21
            case (stall0) 

               1'b1:                begin
               end
               
               1'b0:                begin
                  case (global_state) 

                     4'd00, 4'd09:                      begin
                        s_reg_21 <= 12'd0000;
                     end
                     
                     4'd05:                      begin
                        s_reg_21 <= SobelFilter_Add2Mul2s12u8u12_4_21_out1;
                     end
                     
                  endcase

               end
               
            endcase

         end

         // resource: mux_12bx2i1c
         // resource: regr_en_12
         always @(posedge i_clk)
          begin :drive_s_reg_22
            case (stall0) 

               1'b1:                begin
               end
               
               1'b0:                begin
                  case (global_state) 

                     4'd00, 4'd09:                      begin
                        s_reg_22 <= 12'd0000;
                     end
                     
                     4'd04:                      begin
                        s_reg_22 <= SobelFilter_Add2Mul2s12u8u12_4_21_out1;
                     end
                     
                  endcase

               end
               
            endcase

         end

         // resource: mux_2bx2i1c
         // resource: regr_en_2
         always @(posedge i_clk)
          begin :drive_s_reg_23
            case (stall0) 

               1'b1:                begin
               end
               
               1'b0:                begin
                  case (global_state) 

                     4'd00, 4'd09:                      begin
                        s_reg_23 <= 2'd0;
                     end
                     
                     4'd03:                      begin
                        s_reg_23 <= SobelFilter_Add2i1u2_4_20_out1;
                     end
                     
                     4'd05:                      begin
                        if (SobelFilter_Lti3u2_4_23_out1) begin
                        end
                        else begin
                           s_reg_23 <= 2'd0;
                        end
                     end
                     
                  endcase

               end
               
            endcase

         end

         // resource: regr_en_2
         always @(posedge i_clk)
          begin :drive_s_reg_24
            case (stall0) 

               1'b1:                begin
               end
               
               1'b0:                begin
                  case (global_state) 

                     4'd03:                      begin
                        s_reg_24 <= SobelFilter_Add2i1u2_4_19_out1;
                     end
                     
                  endcase

               end
               
            endcase

         end

         // resource: regr_en_12
         always @(posedge i_clk)
          begin :drive_s_reg_25
            case (stall0) 

               1'b1:                begin
               end
               
               1'b0:                begin
                  s_reg_25 <= filter_out1[11:0];
               end
               
            endcase

         end

         // resource: SobelFilter_Add2u2Mul2i3u2_4  instance: SobelFilter_Add2u2Mul2i3u2_4_18
         assign SobelFilter_Add2u2Mul2i3u2_4_18_out1 = {2'b00, s_reg_19}*4'd03 + {2'b00, s_reg_23};

         // resource: SobelFilter_Add2i1u2_4  instance: SobelFilter_Add2i1u2_4_19
         assign SobelFilter_Add2i1u2_4_19_out1 = s_reg_19 + 2'd1;

         // resource: SobelFilter_Add2i1u2_4  instance: SobelFilter_Add2i1u2_4_20
         assign SobelFilter_Add2i1u2_4_20_out1 = s_reg_23 + 2'd1;

         // instance: drive_filter_in1
         assign filter_in1 = SobelFilter_Add2u2Mul2i3u2_4_18_out1;

         // resource: mux_12bx2i0c
         always @(s_reg_21 or s_reg_22 or gs_ctrl0)
          begin :drive_SobelFilter_Add2Mul2s12u8u12_4_21_in3
            if (gs_ctrl0) begin
               SobelFilter_Add2Mul2s12u8u12_4_21_in3 = s_reg_21;
            end
            else begin
               SobelFilter_Add2Mul2s12u8u12_4_21_in3 = s_reg_22;
            end
         end

         // resource: mux_8bx2i0c
         always @(o_result_g_data or o_result_r_data or gs_ctrl0)
          begin :drive_SobelFilter_Add2Mul2s12u8u12_4_21_in2
            if (gs_ctrl0) begin
               SobelFilter_Add2Mul2s12u8u12_4_21_in2 = o_result_g_data;
            end
            else begin
               SobelFilter_Add2Mul2s12u8u12_4_21_in2 = o_result_r_data;
            end
         end

         // resource: mux_12bx2i0c
         always @(s_reg_25 or filter_out1[11:0] or gs_ctrl0)
          begin :drive_SobelFilter_Add2Mul2s12u8u12_4_21_in1
            if (gs_ctrl0) begin
               SobelFilter_Add2Mul2s12u8u12_4_21_in1 = s_reg_25;
            end
            else begin
               SobelFilter_Add2Mul2s12u8u12_4_21_in1 = filter_out1[11:0];
            end
         end

         // resource: SobelFilter_Add2Mul2s12u8u12_4  instance: SobelFilter_Add2Mul2s12u8u12_4_21
         assign SobelFilter_Add2Mul2s12u8u12_4_21_out1 = SobelFilter_Add2Mul2s12u8u12_4_21_in3 + {4'b0000, SobelFilter_Add2Mul2s12u8u12_4_21_in2}*SobelFilter_Add2Mul2s12u8u12_4_21_in1;

         // resource: SobelFilter_Lti3u2_4  instance: SobelFilter_Lti3u2_4_22
         assign SobelFilter_Lti3u2_4_22_out1 = s_reg_24 < 2'd3;

         // resource: SobelFilter_Lti3u2_4  instance: SobelFilter_Lti3u2_4_23
         assign SobelFilter_Lti3u2_4_23_out1 = s_reg_23 < 2'd3;

         // resource: SobelFilter_Add2Mul2s12u8u12_4  instance: SobelFilter_Add2Mul2s12u8u12_4_25
         assign SobelFilter_Add2Mul2s12u8u12_4_25_out1 = s_reg_20 + {4'b0000, o_result_b_data}*s_reg_25;

         // resource: regr_en_sc_4
         always @(posedge i_clk)
          begin :drive_global_state
            if (i_rst == 1'b0) begin
               global_state <= 4'd00;
            end
            else begin
               case (stall0) 

                  1'b1:                   begin
                  end
                  
                  1'b0:                   begin
                     global_state <= global_state_next;
                  end
                  
               endcase

            end
         end

         // resource: mux_4bx2i1c
         always @(SobelFilter_Lti3u2_4_22_out1 or SobelFilter_Lti3u2_4_23_out1 or global_state)
          begin :drive_global_state_next
            case (global_state) 

               4'd00, 4'd09:                begin
                  global_state_next = 4'd01;
               end
               
               4'd05:                begin
                  if (SobelFilter_Lti3u2_4_23_out1) begin
                     global_state_next = 4'd01;
                  end
                  else begin
                     if (SobelFilter_Lti3u2_4_22_out1) begin
                        global_state_next = 4'd01;
                     end
                     else begin
                        global_state_next = global_state + 4'd01;
                     end
                  end
               end
               
               default:                begin
                  global_state_next = global_state + 4'd01;
               end
               
            endcase

         end

         // resource: mux_1bx2i2c
         // resource: regr_en_sc_1
         always @(posedge i_clk)
          begin :drive_gs_ctrl0
            if (i_rst == 1'b0) begin
               gs_ctrl0 <= 1'b0;
            end
            else begin
               case (stall0) 

                  1'b1:                   begin
                  end
                  
                  1'b0:                   begin
                     case (global_state_next) 

                        4'd05:                         begin
                           gs_ctrl0 <= 1'b1;
                        end
                        
                        default:                         begin
                           gs_ctrl0 <= 1'b0;
                        end
                        
                     endcase

                  end
                  
               endcase

            end
         end

         // instance: drive_i_r_busy
         assign i_r_busy = SobelFilter_gen_busy_r_4_30_out1[2];

         // resource: SobelFilter_gen_busy_r_4  instance: SobelFilter_gen_busy_r_4_30
         assign SobelFilter_gen_busy_r_4_30_out1 = {SobelFilter_gen_busy_r_4_30_gnew_req_i1, {SobelFilter_gen_busy_r_4_30_gdiv_i3, SobelFilter_gen_busy_r_4_30_gen_busy_0_i_r_m_data_is_invalid_next}};

         // resource: SobelFilter_gen_busy_r_4  instance: SobelFilter_gen_busy_r_4_30
         assign SobelFilter_gen_busy_r_4_30_gen_busy_0_i_r_m_data_is_invalid_next = ~SobelFilter_gen_busy_r_4_30_gdiv_i3;

         // resource: SobelFilter_gen_busy_r_4  instance: SobelFilter_gen_busy_r_4_30
         assign SobelFilter_gen_busy_r_4_30_gdiv_i3 = i_r_vld & !SobelFilter_gen_busy_r_4_30_gnew_req_i1;

         // resource: SobelFilter_gen_busy_r_4  instance: SobelFilter_gen_busy_r_4_30
         assign SobelFilter_gen_busy_r_4_30_gnew_req_i1 = i_r_m_busy_req_0 & (i_r_m_unvalidated_req | i_r_vld);

         // resource: regr_ss_1
         always @(posedge i_clk)
          begin :drive_i_r_m_unvalidated_req
            if (i_rst == 1'b0) begin
               i_r_m_unvalidated_req <= 1'd1;
            end
            else begin
               i_r_m_unvalidated_req <= SobelFilter_N_Muxb_1_2_11_4_10_out1;
            end
         end

         // resource: SobelFilter_N_Muxb_1_2_11_4
         always @(i_r_vld or i_r_m_busy_req_0 or i_r_m_unvalidated_req)
          begin :SobelFilter_N_Muxb_1_2_11_4_10
            if (i_r_m_busy_req_0) begin
               SobelFilter_N_Muxb_1_2_11_4_10_out1 = i_r_m_unvalidated_req;
            end
            else begin
               SobelFilter_N_Muxb_1_2_11_4_10_out1 = i_r_vld;
            end
         end

         // instance: drive_i_g_busy
         assign i_g_busy = SobelFilter_gen_busy_r_4_31_out1[2];

         // resource: SobelFilter_gen_busy_r_4  instance: SobelFilter_gen_busy_r_4_31
         assign SobelFilter_gen_busy_r_4_31_out1 = {SobelFilter_gen_busy_r_4_31_gnew_req_i1, {SobelFilter_gen_busy_r_4_31_gdiv_i3, SobelFilter_gen_busy_r_4_31_gen_busy_0_i_r_m_data_is_invalid_next}};

         // resource: SobelFilter_gen_busy_r_4  instance: SobelFilter_gen_busy_r_4_31
         assign SobelFilter_gen_busy_r_4_31_gen_busy_0_i_r_m_data_is_invalid_next = ~SobelFilter_gen_busy_r_4_31_gdiv_i3;

         // resource: SobelFilter_gen_busy_r_4  instance: SobelFilter_gen_busy_r_4_31
         assign SobelFilter_gen_busy_r_4_31_gdiv_i3 = i_g_vld & !SobelFilter_gen_busy_r_4_31_gnew_req_i1;

         // resource: SobelFilter_gen_busy_r_4  instance: SobelFilter_gen_busy_r_4_31
         assign SobelFilter_gen_busy_r_4_31_gnew_req_i1 = i_g_m_busy_req_0 & (i_g_m_unvalidated_req | i_g_vld);

         // resource: regr_ss_1
         always @(posedge i_clk)
          begin :drive_i_g_m_unvalidated_req
            if (i_rst == 1'b0) begin
               i_g_m_unvalidated_req <= 1'd1;
            end
            else begin
               i_g_m_unvalidated_req <= SobelFilter_N_Muxb_1_2_11_4_13_out1;
            end
         end

         // resource: SobelFilter_N_Muxb_1_2_11_4
         always @(i_g_vld or i_g_m_busy_req_0 or i_g_m_unvalidated_req)
          begin :SobelFilter_N_Muxb_1_2_11_4_13
            if (i_g_m_busy_req_0) begin
               SobelFilter_N_Muxb_1_2_11_4_13_out1 = i_g_m_unvalidated_req;
            end
            else begin
               SobelFilter_N_Muxb_1_2_11_4_13_out1 = i_g_vld;
            end
         end

         // instance: drive_i_b_busy
         assign i_b_busy = SobelFilter_gen_busy_r_4_32_out1[2];

         // resource: SobelFilter_gen_busy_r_4  instance: SobelFilter_gen_busy_r_4_32
         assign SobelFilter_gen_busy_r_4_32_out1 = {SobelFilter_gen_busy_r_4_32_gnew_req_i1, {SobelFilter_gen_busy_r_4_32_gdiv_i3, SobelFilter_gen_busy_r_4_32_gen_busy_0_i_r_m_data_is_invalid_next}};

         // resource: SobelFilter_gen_busy_r_4  instance: SobelFilter_gen_busy_r_4_32
         assign SobelFilter_gen_busy_r_4_32_gen_busy_0_i_r_m_data_is_invalid_next = ~SobelFilter_gen_busy_r_4_32_gdiv_i3;

         // resource: SobelFilter_gen_busy_r_4  instance: SobelFilter_gen_busy_r_4_32
         assign SobelFilter_gen_busy_r_4_32_gdiv_i3 = i_b_vld & !SobelFilter_gen_busy_r_4_32_gnew_req_i1;

         // resource: SobelFilter_gen_busy_r_4  instance: SobelFilter_gen_busy_r_4_32
         assign SobelFilter_gen_busy_r_4_32_gnew_req_i1 = i_b_m_busy_req_0 & (i_b_m_unvalidated_req | i_b_vld);

         // resource: regr_ss_1
         always @(posedge i_clk)
          begin :drive_i_b_m_unvalidated_req
            if (i_rst == 1'b0) begin
               i_b_m_unvalidated_req <= 1'd1;
            end
            else begin
               i_b_m_unvalidated_req <= SobelFilter_N_Muxb_1_2_11_4_16_out1;
            end
         end

         // resource: SobelFilter_N_Muxb_1_2_11_4
         always @(i_b_vld or i_b_m_busy_req_0 or i_b_m_unvalidated_req)
          begin :SobelFilter_N_Muxb_1_2_11_4_16
            if (i_b_m_busy_req_0) begin
               SobelFilter_N_Muxb_1_2_11_4_16_out1 = i_b_m_unvalidated_req;
            end
            else begin
               SobelFilter_N_Muxb_1_2_11_4_16_out1 = i_b_vld;
            end
         end

         // instance: drive_o_result_r_vld
         assign o_result_r_vld = SobelFilter_Or_1Ux1U_1U_4_2_out1;

         // resource: SobelFilter_Or_1Ux1U_1U_4  instance: SobelFilter_Or_1Ux1U_1U_4_2
         assign SobelFilter_Or_1Ux1U_1U_4_2_out1 = o_result_r_m_unacked_req | SobelFilter_Xor_1Ux1U_1U_1_1_out1;

         // resource: regr_sc_1
         always @(posedge i_clk)
          begin :drive_o_result_r_m_unacked_req
            if (i_rst == 1'b0) begin
               o_result_r_m_unacked_req <= 1'd0;
            end
            else begin
               o_result_r_m_unacked_req <= SobelFilter_And_1Ux1U_1U_4_26_out1;
            end
         end

         // resource: SobelFilter_And_1Ux1U_1U_4  instance: SobelFilter_And_1Ux1U_1U_4_26
         assign SobelFilter_And_1Ux1U_1U_4_26_out1 = o_result_r_busy & o_result_r_vld;

         // resource: SobelFilter_Xor_1Ux1U_1U_1  instance: SobelFilter_Xor_1Ux1U_1U_1_1
         assign SobelFilter_Xor_1Ux1U_1U_1_1_out1 = o_result_r_m_req_m_trig_req ^ o_result_r_m_req_m_prev_trig_req;

         // resource: regr_sc_1
         always @(posedge i_clk)
          begin :drive_o_result_r_m_req_m_prev_trig_req
            if (i_rst == 1'b0) begin
               o_result_r_m_req_m_prev_trig_req <= 1'd0;
            end
            else begin
               o_result_r_m_req_m_prev_trig_req <= o_result_r_m_req_m_trig_req;
            end
         end

         // resource: SobelFilter_Not_1U_1U_1  instance: SobelFilter_Not_1U_1U_1_3
         assign SobelFilter_Not_1U_1U_1_3_out1 = !o_result_r_m_req_m_trig_req;

         // instance: drive_o_result_g_vld
         assign o_result_g_vld = SobelFilter_Or_1Ux1U_1U_4_5_out1;

         // resource: SobelFilter_Or_1Ux1U_1U_4  instance: SobelFilter_Or_1Ux1U_1U_4_5
         assign SobelFilter_Or_1Ux1U_1U_4_5_out1 = o_result_g_m_unacked_req | SobelFilter_Xor_1Ux1U_1U_1_4_out1;

         // resource: regr_sc_1
         always @(posedge i_clk)
          begin :drive_o_result_g_m_unacked_req
            if (i_rst == 1'b0) begin
               o_result_g_m_unacked_req <= 1'd0;
            end
            else begin
               o_result_g_m_unacked_req <= SobelFilter_And_1Ux1U_1U_4_27_out1;
            end
         end

         // resource: SobelFilter_And_1Ux1U_1U_4  instance: SobelFilter_And_1Ux1U_1U_4_27
         assign SobelFilter_And_1Ux1U_1U_4_27_out1 = o_result_g_busy & o_result_g_vld;

         // resource: SobelFilter_Xor_1Ux1U_1U_1  instance: SobelFilter_Xor_1Ux1U_1U_1_4
         assign SobelFilter_Xor_1Ux1U_1U_1_4_out1 = o_result_g_m_req_m_trig_req ^ o_result_g_m_req_m_prev_trig_req;

         // resource: regr_sc_1
         always @(posedge i_clk)
          begin :drive_o_result_g_m_req_m_prev_trig_req
            if (i_rst == 1'b0) begin
               o_result_g_m_req_m_prev_trig_req <= 1'd0;
            end
            else begin
               o_result_g_m_req_m_prev_trig_req <= o_result_g_m_req_m_trig_req;
            end
         end

         // resource: SobelFilter_Not_1U_1U_1  instance: SobelFilter_Not_1U_1U_1_6
         assign SobelFilter_Not_1U_1U_1_6_out1 = !o_result_g_m_req_m_trig_req;

         // instance: drive_o_result_b_vld
         assign o_result_b_vld = SobelFilter_Or_1Ux1U_1U_4_8_out1;

         // resource: SobelFilter_Or_1Ux1U_1U_4  instance: SobelFilter_Or_1Ux1U_1U_4_8
         assign SobelFilter_Or_1Ux1U_1U_4_8_out1 = o_result_b_m_unacked_req | SobelFilter_Xor_1Ux1U_1U_1_7_out1;

         // resource: regr_sc_1
         always @(posedge i_clk)
          begin :drive_o_result_b_m_unacked_req
            if (i_rst == 1'b0) begin
               o_result_b_m_unacked_req <= 1'd0;
            end
            else begin
               o_result_b_m_unacked_req <= SobelFilter_And_1Ux1U_1U_4_28_out1;
            end
         end

         // resource: SobelFilter_And_1Ux1U_1U_4  instance: SobelFilter_And_1Ux1U_1U_4_28
         assign SobelFilter_And_1Ux1U_1U_4_28_out1 = o_result_b_busy & o_result_b_vld;

         // resource: SobelFilter_Xor_1Ux1U_1U_1  instance: SobelFilter_Xor_1Ux1U_1U_1_7
         assign SobelFilter_Xor_1Ux1U_1U_1_7_out1 = o_result_b_m_req_m_trig_req ^ o_result_b_m_req_m_prev_trig_req;

         // resource: regr_sc_1
         always @(posedge i_clk)
          begin :drive_o_result_b_m_req_m_prev_trig_req
            if (i_rst == 1'b0) begin
               o_result_b_m_req_m_prev_trig_req <= 1'd0;
            end
            else begin
               o_result_b_m_req_m_prev_trig_req <= o_result_b_m_req_m_trig_req;
            end
         end

         // resource: SobelFilter_Not_1U_1U_1  instance: SobelFilter_Not_1U_1U_1_9
         assign SobelFilter_Not_1U_1U_1_9_out1 = !o_result_b_m_req_m_trig_req;


endmodule

