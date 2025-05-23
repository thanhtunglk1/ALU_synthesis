
// Generated by Cadence Genus(TM) Synthesis Solution GENUS15.20 - 15.20-p004_1
// Generated on: May 20 2025 07:25:00

// Verification Directory fv/synth_wrapper 

module alu(clk, rst_n, a, b, op, result, carry);
  input clk, rst_n;
  input [3:0] a, b;
  input [2:0] op;
  output [3:0] result;
  output carry;
  wire clk, rst_n;
  wire [3:0] a, b;
  wire [2:0] op;
  wire [3:0] result;
  wire carry;
  wire n_2, n_5, n_7, n_8, n_9, n_12, n_13, n_16;
  wire n_18, n_19, n_22, n_23, n_24, n_25, n_27, n_29;
  wire n_32, n_36, n_38, n_41, n_42, n_43, n_46, n_53;
  wire n_56, n_57, n_61, n_62, n_65, n_67, n_75, n_76;
  wire n_79, n_82, n_95, n_97, n_104, n_110, n_113, n_116;
  wire n_119, n_120, n_122, n_124, n_125, n_127, n_129, n_130;
  wire n_135, n_136, n_139, n_140, n_157, n_189, n_208, n_210;
  wire n_211, n_224, n_225, n_226, n_227, n_229, n_235, n_243;
  wire n_249, n_250, n_251, n_252, n_253, n_255, n_256, n_258;
  wire n_269, n_270, n_271, n_272, n_273, n_274, n_276, n_277;
  wire n_278, n_279, n_281, n_282, n_283, n_285, n_287, n_288;
  wire n_292, n_293, n_294, n_295, n_296, n_298, n_299, n_300;
  wire n_301, n_311, n_317, n_318, n_320, n_327, n_328, n_337;
  wire n_338, n_339, n_341, n_342, n_343, n_344, n_345, n_347;
  wire n_348, n_350, n_351, n_352, n_354, n_355, n_356, n_359;
  wire n_360, n_361, n_364, n_367, n_368, n_369, n_370, n_371;
  wire n_372, n_373, n_374, n_375, n_376, n_377, n_378, n_379;
  wire n_380, n_381, n_383, n_384, n_385, n_386, n_389, n_390;
  wire n_391, n_393, n_394, n_395, n_396, n_397, n_398, n_400;
  wire n_401, n_402, n_403, n_404, n_405, n_406, n_407;
  sky130_fd_sc_hd__dfrtp_1 \result_reg[3] (.RESET_B (rst_n), .CLK
       (clk), .D (n_370), .Q (result[3]));
  sky130_fd_sc_hd__dfrtp_1 \result_reg[2] (.RESET_B (rst_n), .CLK
       (clk), .D (n_157), .Q (result[2]));
  sky130_fd_sc_hd__dfrtp_1 carry_reg(.RESET_B (rst_n), .CLK (clk), .D
       (n_301), .Q (carry));
  sky130_fd_sc_hd__nand2_1 g8775(.A (n_401), .B (n_139), .Y (n_157));
  sky130_fd_sc_hd__dfrtp_1 \result_reg[1] (.RESET_B (rst_n), .CLK
       (clk), .D (n_383), .Q (result[1]));
  sky130_fd_sc_hd__dfrtp_1 \result_reg[0] (.RESET_B (rst_n), .CLK
       (clk), .D (n_140), .Q (result[0]));
  sky130_fd_sc_hd__nand3_1 g8794(.A (n_127), .B (n_116), .C (n_125), .Y
       (n_140));
  sky130_fd_sc_hd__and4_1 g8795(.A (n_129), .B (n_320), .C (n_120), .D
       (n_403), .X (n_139));
  sky130_fd_sc_hd__nand2_2 g8798(.A (n_124), .B (n_62), .Y (n_136));
  sky130_fd_sc_hd__a21oi_2 g8799(.A1 (n_235), .A2 (n_8), .B1 (n_2), .Y
       (n_135));
  sky130_fd_sc_hd__nor2_1 g8807(.A (n_356), .B (n_235), .Y (n_130));
  sky130_fd_sc_hd__nand2_1 g8808(.A (n_274), .B (n_211), .Y (n_129));
  sky130_fd_sc_hd__o2bb2ai_1 g8810(.A1_N (n_82), .A2_N (n_277), .B1
       (n_24), .B2 (b[0]), .Y (n_127));
  sky130_fd_sc_hd__o221ai_1 g8812(.A1 (n_364), .A2 (n_76), .B1 (n_24),
       .B2 (n_249), .C1 (n_122), .Y (n_125));
  sky130_fd_sc_hd__o2bb2ai_2 g8813(.A1_N (n_19), .A2_N (n_104), .B1
       (n_19), .B2 (n_104), .Y (n_124));
  sky130_fd_sc_hd__a21oi_1 g8815(.A1 (n_65), .A2 (b[0]), .B1 (n_95), .Y
       (n_122));
  sky130_fd_sc_hd__nand2_1 g8817(.A (n_273), .B (n_376), .Y (n_120));
  sky130_fd_sc_hd__o21a_2 g8818(.A1 (n_227), .A2 (n_249), .B1 (n_189),
       .X (n_119));
  sky130_fd_sc_hd__a31oi_1 g8820(.A1 (n_57), .A2 (n_250), .A3 (n_24),
       .B1 (n_97), .Y (n_116));
  sky130_fd_sc_hd__o32a_1 g8824(.A1 (n_27), .A2 (n_12), .A3 (n_22), .B1
       (n_23), .B2 (n_317), .X (n_113));
  sky130_fd_sc_hd__o2bb2ai_2 g8833(.A1_N (n_376), .A2_N (n_371), .B1
       (n_376), .B2 (n_371), .Y (n_110));
  sky130_fd_sc_hd__o22ai_1 g8839(.A1 (n_24), .A2 (n_317), .B1 (n_27),
       .B2 (n_328), .Y (n_97));
  sky130_fd_sc_hd__nand2_2 g8840(.A (n_394), .B (n_46), .Y (n_104));
  sky130_fd_sc_hd__nand2_2 g8847(.A (n_279), .B (n_210), .Y (n_95));
  sky130_fd_sc_hd__or2_1 g8857(.A (n_16), .B (n_27), .X (n_79));
  sky130_fd_sc_hd__nand2_4 g8863(.A (n_224), .B (n_61), .Y (n_82));
  sky130_fd_sc_hd__a2bb2oi_1 g8871(.A1_N (n_24), .A2_N (n_12), .B1
       (b[0]), .B2 (n_41), .Y (n_67));
  sky130_fd_sc_hd__o2bb2ai_2 g8872(.A1_N (n_372), .A2_N (n_42), .B1
       (a[3]), .B2 (n_42), .Y (n_75));
  sky130_fd_sc_hd__inv_1 g8879(.A (n_328), .Y (n_62));
  sky130_fd_sc_hd__inv_2 g8881(.A (n_27), .Y (n_61));
  sky130_fd_sc_hd__clkinv_1 g8884(.A (n_249), .Y (n_57));
  sky130_fd_sc_hd__nand2_1 g8886(.A (n_43), .B (b[0]), .Y (n_56));
  sky130_fd_sc_hd__nor2_1 g8890(.A (n_285), .B (n_9), .Y (n_65));
  sky130_fd_sc_hd__nand2_2 g8893(.A (n_32), .B (op[1]), .Y (n_27));
  sky130_fd_sc_hd__nand2_1 g8902(.A (n_38), .B (b[1]), .Y (n_46));
  sky130_fd_sc_hd__and2_1 g8905(.A (b[0]), .B (n_372), .X (n_53));
  sky130_fd_sc_hd__inv_2 g8911(.A (b[2]), .Y (n_25));
  sky130_fd_sc_hd__clkinv_1 g8913(.A (n_43), .Y (n_24));
  sky130_fd_sc_hd__clkinv_1 g8914(.A (a[0]), .Y (n_43));
  sky130_fd_sc_hd__clkinv_4 g8915(.A (b[0]), .Y (n_42));
  sky130_fd_sc_hd__inv_2 g8921(.A (n_22), .Y (n_23));
  sky130_fd_sc_hd__clkinv_1 g8922(.A (a[1]), .Y (n_22));
  sky130_fd_sc_hd__inv_2 g8927(.A (a[1]), .Y (n_38));
  sky130_fd_sc_hd__inv_2 g8929(.A (n_258), .Y (n_19));
  sky130_fd_sc_hd__inv_2 g8932(.A (op[0]), .Y (n_36));
  sky130_fd_sc_hd__clkinv_1 g8939(.A (op[0]), .Y (n_18));
  sky130_fd_sc_hd__inv_2 g8940(.A (op[2]), .Y (n_32));
  sky130_fd_sc_hd__inv_1 g8943(.A (b[3]), .Y (n_16));
  sky130_fd_sc_hd__inv_2 g8956(.A (n_12), .Y (n_13));
  sky130_fd_sc_hd__inv_2 g8957(.A (b[1]), .Y (n_12));
  sky130_fd_sc_hd__clkbuf_1 g8959(.A (b[1]), .X (n_29));
  sky130_fd_sc_hd__inv_2 fopt8979(.A (n_352), .Y (n_8));
  sky130_fd_sc_hd__nand3_1 g3(.A (n_364), .B (n_208), .C (n_56), .Y
       (n_7));
  sky130_fd_sc_hd__nand2_1 g8981(.A (n_208), .B (n_56), .Y (n_5));
  sky130_fd_sc_hd__nor2b_1 g8986(.A (n_253), .B_N (n_345), .Y (n_2));
  sky130_fd_sc_hd__nand3_1 g9000(.A (n_42), .B (n_13), .C (n_285), .Y
       (n_189));
  sky130_fd_sc_hd__nand2b_1 g9016(.A_N (a[1]), .B (n_42), .Y (n_208));
  sky130_fd_sc_hd__inv_1 g9017(.A (a[1]), .Y (n_41));
  sky130_fd_sc_hd__and2b_4 g9018(.A_N (b[3]), .B (n_25), .X (n_210));
  sky130_fd_sc_hd__clkinv_1 g9019(.A (n_25), .Y (n_211));
  sky130_fd_sc_hd__inv_2 g9031(.A (n_18), .Y (n_224));
  sky130_fd_sc_hd__nand2_2 g9032(.A (n_29), .B (n_225), .Y (n_226));
  sky130_fd_sc_hd__inv_2 g9033(.A (op[0]), .Y (n_225));
  sky130_fd_sc_hd__inv_2 g9035(.A (op[0]), .Y (n_227));
  sky130_fd_sc_hd__inv_2 g9036(.A (n_225), .Y (n_229));
  sky130_fd_sc_hd__a21oi_1 g9053(.A1 (n_13), .A2 (n_253), .B1 (n_53),
       .Y (n_243));
  sky130_fd_sc_hd__nand2_4 g9057(.A (n_42), .B (n_12), .Y (n_249));
  sky130_fd_sc_hd__inv_2 g9058(.A (n_282), .Y (n_250));
  sky130_fd_sc_hd__nand4_2 g9060(.A (n_251), .B (n_252), .C (n_250), .D
       (n_255), .Y (n_256));
  sky130_fd_sc_hd__nand2_1 g9061(.A (n_5), .B (n_9), .Y (n_251));
  sky130_fd_sc_hd__nand2_1 g9062(.A (n_53), .B (n_364), .Y (n_252));
  sky130_fd_sc_hd__nand2_1 g9063(.A (n_253), .B (n_57), .Y (n_255));
  sky130_fd_sc_hd__inv_4 g9067(.A (n_36), .Y (n_258));
  sky130_fd_sc_hd__nor2_2 g9077(.A (op[1]), .B (n_32), .Y (n_269));
  sky130_fd_sc_hd__inv_2 g9078(.A (n_271), .Y (n_272));
  sky130_fd_sc_hd__nand2_4 g9079(.A (n_269), .B (n_270), .Y (n_271));
  sky130_fd_sc_hd__inv_2 g9080(.A (n_258), .Y (n_270));
  sky130_fd_sc_hd__o21ai_1 g9081(.A1 (n_211), .A2 (n_271), .B1 (n_82),
       .Y (n_273));
  sky130_fd_sc_hd__o221ai_2 g9082(.A1 (n_376), .A2 (n_271), .B1
       (n_372), .B2 (n_27), .C1 (n_82), .Y (n_274));
  sky130_fd_sc_hd__a21o_1 g9084(.A1 (n_276), .A2 (n_356), .B1 (n_62),
       .X (n_277));
  sky130_fd_sc_hd__buf_1 g9085(.A (n_271), .X (n_276));
  sky130_fd_sc_hd__nor2_4 g9086(.A (n_278), .B (n_229), .Y (n_279));
  sky130_fd_sc_hd__nand2_2 g9087(.A (op[2]), .B (op[1]), .Y (n_278));
  sky130_fd_sc_hd__nor2_1 g9088(.A (n_18), .B (n_278), .Y (n_281));
  sky130_fd_sc_hd__nand4b_1 g9090(.A_N (n_278), .B (n_258), .C (n_25),
       .D (n_16), .Y (n_282));
  sky130_fd_sc_hd__nand2_4 g9091(.A (n_226), .B (n_299), .Y (n_283));
  sky130_fd_sc_hd__buf_6 g9093(.A (a[1]), .X (n_285));
  sky130_fd_sc_hd__nand2_1 g9094(.A (n_339), .B (n_287), .Y (n_288));
  sky130_fd_sc_hd__nand3_2 g78(.A (n_256), .B (n_406), .C (n_293), .Y
       (n_294));
  sky130_fd_sc_hd__o22a_2 g79(.A1 (n_271), .A2 (n_292), .B1 (n_16), .B2
       (n_82), .X (n_293));
  sky130_fd_sc_hd__or2_1 g80(.A (a[3]), .B (n_16), .X (n_292));
  sky130_fd_sc_hd__inv_2 g89(.A (n_110), .Y (n_295));
  sky130_fd_sc_hd__nand3_2 g88(.A (n_119), .B (n_136), .C (n_342), .Y
       (n_296));
  sky130_fd_sc_hd__nand2_1 g8(.A (n_298), .B (op[0]), .Y (n_299));
  sky130_fd_sc_hd__inv_1 g9(.A (b[1]), .Y (n_298));
  sky130_fd_sc_hd__a41oi_2 g165(.A1 (n_390), .A2 (n_300), .A3 (n_391),
       .A4 (n_135), .B1 (n_356), .Y (n_301));
  sky130_fd_sc_hd__nand2_1 g166(.A (n_288), .B (n_235), .Y (n_300));
  sky130_fd_sc_hd__a2bb2oi_1 g40(.A1_N (a[2]), .A2_N (n_317), .B1
       (n_318), .B2 (n_76), .Y (n_320));
  sky130_fd_sc_hd__nand2b_2 g42(.A_N (n_18), .B (n_269), .Y (n_317));
  sky130_fd_sc_hd__nor2_1 g43(.A (n_9), .B (n_95), .Y (n_318));
  sky130_fd_sc_hd__inv_2 g44(.A (n_75), .Y (n_76));
  sky130_fd_sc_hd__nand2_1 g796(.A (n_258), .B (n_42), .Y (n_327));
  sky130_fd_sc_hd__nand2_1 g792(.A (b[0]), .B (a[0]), .Y (n_328));
  sky130_fd_sc_hd__and2_1 g781(.A (n_287), .B (n_352), .X (n_337));
  sky130_fd_sc_hd__nand3_2 g790(.A (n_283), .B (n_376), .C (n_285), .Y
       (n_287));
  sky130_fd_sc_hd__nand3_1 g784(.A (n_338), .B (n_283), .C (n_23), .Y
       (n_339));
  sky130_fd_sc_hd__inv_1 g787(.A (n_371), .Y (n_338));
  sky130_fd_sc_hd__and2_1 g783(.A (n_373), .B (n_376), .X (n_341));
  sky130_fd_sc_hd__nand2_1 g797(.A (n_283), .B (n_23), .Y (n_342));
  sky130_fd_sc_hd__nand2_1 g82(.A (n_235), .B (n_354), .Y (n_355));
  sky130_fd_sc_hd__nand2_4 g84(.A (n_347), .B (n_348), .Y (n_235));
  sky130_fd_sc_hd__nand2_2 g85(.A (n_345), .B (n_253), .Y (n_347));
  sky130_fd_sc_hd__nand2_1 g9098(.A (n_343), .B (n_344), .Y (n_345));
  sky130_fd_sc_hd__nand2_1 g9099(.A (n_227), .B (b[3]), .Y (n_343));
  sky130_fd_sc_hd__nand2b_1 g90(.A_N (b[3]), .B (op[0]), .Y (n_344));
  sky130_fd_sc_hd__inv_2 g98(.A (a[3]), .Y (n_253));
  sky130_fd_sc_hd__nand3_1 g86(.A (n_343), .B (n_344), .C (a[3]), .Y
       (n_348));
  sky130_fd_sc_hd__and2_1 g83(.A (n_352), .B (n_311), .X (n_354));
  sky130_fd_sc_hd__nand3_1 g9100(.A (n_350), .B (n_351), .C (a[2]), .Y
       (n_352));
  sky130_fd_sc_hd__nand2_2 g94(.A (n_227), .B (n_25), .Y (n_350));
  sky130_fd_sc_hd__nand2_1 g93(.A (b[2]), .B (op[0]), .Y (n_351));
  sky130_fd_sc_hd__nor2_1 g92(.A (op[2]), .B (op[1]), .Y (n_311));
  sky130_fd_sc_hd__inv_2 g91(.A (n_311), .Y (n_356));
  sky130_fd_sc_hd__nand2_1 g52(.A (n_359), .B (n_360), .Y (n_361));
  sky130_fd_sc_hd__o211a_1 g53(.A1 (n_249), .A2 (n_95), .B1 (n_79), .C1
       (n_82), .X (n_359));
  sky130_fd_sc_hd__nand2_1 g54(.A (n_272), .B (n_16), .Y (n_360));
  sky130_fd_sc_hd__inv_2 g9101(.A (n_9), .Y (n_364));
  sky130_fd_sc_hd__inv_2 g5(.A (n_393), .Y (n_9));
  sky130_fd_sc_hd__nand3_1 g9102(.A (n_368), .B (n_367), .C (n_369), .Y
       (n_370));
  sky130_fd_sc_hd__nand2_1 g9103(.A (n_396), .B (n_130), .Y (n_367));
  sky130_fd_sc_hd__a21oi_2 g9104(.A1 (n_361), .A2 (a[3]), .B1 (n_294),
       .Y (n_368));
  sky130_fd_sc_hd__a21o_1 g9105(.A1 (n_296), .A2 (n_110), .B1 (n_355),
       .X (n_369));
  sky130_fd_sc_hd__a21oi_1 g29(.A1 (n_371), .A2 (n_372), .B1 (n_374),
       .Y (n_375));
  sky130_fd_sc_hd__nand2_2 g32(.A (n_350), .B (n_351), .Y (n_371));
  sky130_fd_sc_hd__inv_2 g35(.A (a[2]), .Y (n_372));
  sky130_fd_sc_hd__inv_2 g30(.A (n_373), .Y (n_374));
  sky130_fd_sc_hd__nand2_2 g31(.A (n_327), .B (n_328), .Y (n_373));
  sky130_fd_sc_hd__inv_2 g34(.A (n_372), .Y (n_376));
  sky130_fd_sc_hd__nand4_1 g248(.A (n_377), .B (n_381), .C (n_407), .D
       (n_389), .Y (n_383));
  sky130_fd_sc_hd__o21a_1 g251(.A1 (n_82), .A2 (n_65), .B1 (n_113), .X
       (n_377));
  sky130_fd_sc_hd__clkinv_1 g249(.A (n_380), .Y (n_381));
  sky130_fd_sc_hd__nand2_1 g250(.A (n_378), .B (n_379), .Y (n_380));
  sky130_fd_sc_hd__nand4_1 g253(.A (n_402), .B (n_243), .C (n_279), .D
       (n_405), .Y (n_378));
  sky130_fd_sc_hd__a2bb2oi_1 g252(.A1_N (n_282), .A2_N (n_7), .B1
       (n_272), .B2 (n_404), .Y (n_379));
  sky130_fd_sc_hd__nand2_2 g9107(.A (n_384), .B (n_385), .Y (n_386));
  sky130_fd_sc_hd__nand2_2 g9108(.A (n_283), .B (n_41), .Y (n_384));
  sky130_fd_sc_hd__nand3_1 g9109(.A (n_226), .B (n_299), .C (n_285), .Y
       (n_385));
  sky130_fd_sc_hd__nand3b_1 g9110(.A_N (n_373), .B (n_386), .C (n_311),
       .Y (n_389));
  sky130_fd_sc_hd__nand4_1 g9111(.A (n_386), .B (n_235), .C (n_373), .D
       (n_338), .Y (n_390));
  sky130_fd_sc_hd__nand3_1 g9112(.A (n_341), .B (n_235), .C (n_386), .Y
       (n_391));
  sky130_fd_sc_hd__nand2_1 g9114(.A (n_393), .B (a[1]), .Y (n_394));
  sky130_fd_sc_hd__inv_2 g10(.A (b[1]), .Y (n_393));
  sky130_fd_sc_hd__nand3_1 g23(.A (n_395), .B (n_337), .C (n_339), .Y
       (n_396));
  sky130_fd_sc_hd__nand2_1 g24(.A (n_386), .B (n_375), .Y (n_395));
  sky130_fd_sc_hd__nand3_1 g9115(.A (n_398), .B (n_400), .C (n_311), .Y
       (n_401));
  sky130_fd_sc_hd__nand2_1 g9116(.A (n_397), .B (n_295), .Y (n_398));
  sky130_fd_sc_hd__inv_1 g33(.A (n_296), .Y (n_397));
  sky130_fd_sc_hd__nand2_1 g9117(.A (n_110), .B (n_296), .Y (n_400));
  sky130_fd_sc_hd__o2111ai_1 g9119(.A1 (n_376), .A2 (n_249), .B1
       (n_281), .C1 (n_67), .D1 (n_402), .Y (n_403));
  sky130_fd_sc_hd__o21a_1 g36(.A1 (n_42), .A2 (n_364), .B1 (n_210), .X
       (n_402));
  sky130_fd_sc_hd__xor2_1 g2(.A (n_41), .B (n_364), .X (n_404));
  sky130_fd_sc_hd__nand2b_1 g9120(.A_N (n_285), .B (n_57), .Y (n_405));
  sky130_fd_sc_hd__nand2b_1 g9121(.A_N (n_317), .B (n_253), .Y (n_406));
  sky130_fd_sc_hd__nand3b_1 g9122(.A_N (n_386), .B (n_373), .C (n_311),
       .Y (n_407));
endmodule

module synth_wrapper(clk, rst_n, a, b, op, result, carry);
  input clk, rst_n;
  input [3:0] a, b;
  input [2:0] op;
  output [3:0] result;
  output carry;
  wire clk, rst_n;
  wire [3:0] a, b;
  wire [2:0] op;
  wire [3:0] result;
  wire carry;
  wire [3:0] a_reg;
  wire [3:0] b_reg;
  wire [2:0] op_reg;
  wire carry_reg_48, \result_reg[0]_36 , \result_reg[1]_37 ,
       \result_reg[2]_38 , \result_reg[3]_39 ;
  alu alu_design(.clk (clk), .rst_n (rst_n), .a (a_reg), .b (b_reg),
       .op (op_reg), .result ({\result_reg[3]_39 , \result_reg[2]_38 ,
       \result_reg[1]_37 , \result_reg[0]_36 }), .carry (carry_reg_48));
  sky130_fd_sc_hd__dfrtp_1 \result_reg[3] (.RESET_B (rst_n), .CLK
       (clk), .D (\result_reg[3]_39 ), .Q (result[3]));
  sky130_fd_sc_hd__dfrtp_1 \result_reg[2] (.RESET_B (rst_n), .CLK
       (clk), .D (\result_reg[2]_38 ), .Q (result[2]));
  sky130_fd_sc_hd__dfrtp_1 \result_reg[0] (.RESET_B (rst_n), .CLK
       (clk), .D (\result_reg[0]_36 ), .Q (result[0]));
  sky130_fd_sc_hd__dfrtp_1 carry_reg(.RESET_B (rst_n), .CLK (clk), .D
       (carry_reg_48), .Q (carry));
  sky130_fd_sc_hd__dfrtp_1 \result_reg[1] (.RESET_B (rst_n), .CLK
       (clk), .D (\result_reg[1]_37 ), .Q (result[1]));
  sky130_fd_sc_hd__dfrtp_2 \op_reg_reg[0] (.RESET_B (rst_n), .CLK
       (clk), .D (op[0]), .Q (op_reg[0]));
  sky130_fd_sc_hd__dfrtp_1 \op_reg_reg[2] (.RESET_B (rst_n), .CLK
       (clk), .D (op[2]), .Q (op_reg[2]));
  sky130_fd_sc_hd__dfrtp_2 \a_reg_reg[1] (.RESET_B (rst_n), .CLK (clk),
       .D (a[1]), .Q (a_reg[1]));
  sky130_fd_sc_hd__dfrtp_1 \a_reg_reg[0] (.RESET_B (rst_n), .CLK (clk),
       .D (a[0]), .Q (a_reg[0]));
  sky130_fd_sc_hd__dfrtp_2 \op_reg_reg[1] (.RESET_B (rst_n), .CLK
       (clk), .D (op[1]), .Q (op_reg[1]));
  sky130_fd_sc_hd__dfrtp_1 \a_reg_reg[2] (.RESET_B (rst_n), .CLK (clk),
       .D (a[2]), .Q (a_reg[2]));
  sky130_fd_sc_hd__dfrtp_1 \a_reg_reg[3] (.RESET_B (rst_n), .CLK (clk),
       .D (a[3]), .Q (a_reg[3]));
  sky130_fd_sc_hd__dfrtp_1 \b_reg_reg[2] (.RESET_B (rst_n), .CLK (clk),
       .D (b[2]), .Q (b_reg[2]));
  sky130_fd_sc_hd__dfrtp_2 \b_reg_reg[1] (.RESET_B (rst_n), .CLK (clk),
       .D (b[1]), .Q (b_reg[1]));
  sky130_fd_sc_hd__dfrtp_2 \b_reg_reg[0] (.RESET_B (rst_n), .CLK (clk),
       .D (b[0]), .Q (b_reg[0]));
  sky130_fd_sc_hd__dfrtp_1 \b_reg_reg[3] (.RESET_B (rst_n), .CLK (clk),
       .D (b[3]), .Q (b_reg[3]));
endmodule

