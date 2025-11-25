; ModuleID = 'angha-ll-stm32f1/extr_rs.c_get_num_of_ant_from_rate.ll'
source_filename = "out/extr_rs.c_get_num_of_ant_from_rate.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@RATE_MCS_ANT_A_MSK = local_unnamed_addr global i32 0
@RATE_MCS_ANT_B_MSK = local_unnamed_addr global i32 0
@RATE_MCS_ANT_C_MSK = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none)
define range(i32 0, 2) i32 @get_num_of_ant_from_rate(i32 %rate_n_flags) local_unnamed_addr addrspace(1) #0 {
body:
  %RATE_MCS_ANT_A_MSK = load i32, ptr @RATE_MCS_ANT_A_MSK, align 4
  %binop = and i32 %RATE_MCS_ANT_A_MSK, %rate_n_flags
  %cmpi = icmp ne i32 %binop, 0
  %RATE_MCS_ANT_B_MSK = load i32, ptr @RATE_MCS_ANT_B_MSK, align 4
  %binop5 = and i32 %RATE_MCS_ANT_B_MSK, %rate_n_flags
  %cmpi6 = icmp ne i32 %binop5, 0
  %binop8 = xor i1 %cmpi, %cmpi6
  %RATE_MCS_ANT_C_MSK = load i32, ptr @RATE_MCS_ANT_C_MSK, align 4
  %binop10 = and i32 %RATE_MCS_ANT_C_MSK, %rate_n_flags
  %cmpi11 = icmp ne i32 %binop10, 0
  %binop13 = xor i1 %binop8, %cmpi11
  %zext = zext i1 %binop13 to i32
  ret i32 %zext
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
