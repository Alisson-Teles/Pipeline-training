; ModuleID = 'angha-ll-stm32f1/extr_disassembler.c_arm_parallel_addsub_signed.ll'
source_filename = "out/extr_disassembler.c_arm_parallel_addsub_signed.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@FASTTRAP_T_COMMON = local_unnamed_addr global i32 0
@FASTTRAP_T_INV = local_unnamed_addr global i32 0
@REG_PC = local_unnamed_addr global i64 0

declare i64 @ARM_RD(i32) local_unnamed_addr addrspace(1) #0

declare i64 @ARM_RM(i32) local_unnamed_addr addrspace(1) #0

declare i64 @ARM_RN(i32) local_unnamed_addr addrspace(1) #0

define i32 @arm_parallel_addsub_signed(i32 %instr) local_unnamed_addr addrspace(1) #0 {
body:
  %0 = tail call addrspace(1) i64 @ARM_RM(i32 %instr)
  %REG_PC = load i64, ptr @REG_PC, align 8
  %cmpi.not = icmp eq i64 %0, %REG_PC
  br i1 %cmpi.not, label %if_cont, label %fullev

fullev:                                           ; preds = %body
  %1 = tail call addrspace(1) i64 @ARM_RD(i32 %instr)
  %REG_PC4 = load i64, ptr @REG_PC, align 8
  %cmpi5.not = icmp eq i64 %1, %REG_PC4
  br i1 %cmpi5.not, label %if_cont, label %fullev6

fullev6:                                          ; preds = %fullev
  %2 = tail call addrspace(1) i64 @ARM_RN(i32 %instr)
  %REG_PC10 = load i64, ptr @REG_PC, align 8
  %cmpi11.not = icmp eq i64 %2, %REG_PC10
  br i1 %cmpi11.not, label %if_cont, label %common.ret

common.ret:                                       ; preds = %if_cont, %fullev6
  %common.ret.op.in = phi ptr [ @FASTTRAP_T_INV, %if_cont ], [ @FASTTRAP_T_COMMON, %fullev6 ]
  %common.ret.op = load i32, ptr %common.ret.op.in, align 4
  ret i32 %common.ret.op

if_cont:                                          ; preds = %fullev6, %fullev, %body
  br label %common.ret
}

attributes #0 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
