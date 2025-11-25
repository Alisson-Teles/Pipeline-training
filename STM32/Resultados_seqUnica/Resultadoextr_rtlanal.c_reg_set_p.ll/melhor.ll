; ModuleID = 'angha-ll-stm32f1/extr_rtlanal.c_reg_set_p.ll'
source_filename = "out/extr_rtlanal.c_reg_set_p.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@CLOBBER = local_unnamed_addr global i32 0
@FIRST_PSEUDO_REGISTER = local_unnamed_addr global i64 0
@NULL_RTX = local_unnamed_addr global i64 0
@regs_invalidated_by_call = local_unnamed_addr global i32 0

declare i64 @CALL_P(i32) local_unnamed_addr addrspace(1) #0

declare i64 @FIND_REG_INC_NOTE(i32, i32) local_unnamed_addr addrspace(1) #0

declare i32 @GET_MODE(i32) local_unnamed_addr addrspace(1) #0

declare i64 @INSN_P(i32) local_unnamed_addr addrspace(1) #0

declare i64 @MEM_P(i32) local_unnamed_addr addrspace(1) #0

declare i64 @REGNO(i32) local_unnamed_addr addrspace(1) #0

declare i64 @REG_P(i32) local_unnamed_addr addrspace(1) #0

declare i64 @find_reg_fusage(i32, i32, i32) local_unnamed_addr addrspace(1) #0

declare i64 @overlaps_hard_reg_set_p(i32, i32, i64) local_unnamed_addr addrspace(1) #0

declare i64 @set_of(i32, i32) local_unnamed_addr addrspace(1) #0

define range(i32 0, 2) i32 @reg_set_p(i32 %reg, i32 %insn) local_unnamed_addr addrspace(1) #0 {
body:
  %0 = tail call addrspace(1) i64 @INSN_P(i32 %insn)
  %cmpi.not = icmp eq i64 %0, 0
  br i1 %cmpi.not, label %if_cont, label %fullev

fullev:                                           ; preds = %body
  %1 = tail call addrspace(1) i64 @FIND_REG_INC_NOTE(i32 %insn, i32 %reg)
  %cmpi6.not = icmp eq i64 %1, 0
  br i1 %cmpi6.not, label %fullev7, label %common.ret

fullev7:                                          ; preds = %fullev
  %2 = tail call addrspace(1) i64 @CALL_P(i32 %insn)
  %cmpi11.not = icmp eq i64 %2, 0
  br i1 %cmpi11.not, label %if_cont, label %fullev12

fullev12:                                         ; preds = %fullev7
  %3 = tail call addrspace(1) i64 @REG_P(i32 %reg)
  %cmpi16.not = icmp eq i64 %3, 0
  br i1 %cmpi16.not, label %fullev30, label %fullev17

fullev17:                                         ; preds = %fullev12
  %4 = tail call addrspace(1) i64 @REGNO(i32 %reg)
  %FIRST_PSEUDO_REGISTER = load i64, ptr @FIRST_PSEUDO_REGISTER, align 8
  %cmpi21 = icmp slt i64 %4, %FIRST_PSEUDO_REGISTER
  br i1 %cmpi21, label %fullev22, label %fullev30

fullev22:                                         ; preds = %fullev17
  %regs_invalidated_by_call = load i32, ptr @regs_invalidated_by_call, align 4
  %5 = tail call addrspace(1) i32 @GET_MODE(i32 %reg)
  %6 = tail call addrspace(1) i64 @REGNO(i32 %reg)
  %7 = tail call addrspace(1) i64 @overlaps_hard_reg_set_p(i32 %regs_invalidated_by_call, i32 %5, i64 %6)
  %cmpi27.not = icmp eq i64 %7, 0
  br i1 %cmpi27.not, label %fullev30, label %common.ret

fullev30:                                         ; preds = %fullev22, %fullev17, %fullev12
  %8 = tail call addrspace(1) i64 @MEM_P(i32 %reg)
  %cmpi34.not = icmp eq i64 %8, 0
  br i1 %cmpi34.not, label %fullev36, label %common.ret

fullev36:                                         ; preds = %fullev30
  %CLOBBER = load i32, ptr @CLOBBER, align 4
  %9 = tail call addrspace(1) i64 @find_reg_fusage(i32 %insn, i32 %CLOBBER, i32 %reg)
  %cmpi41.not = icmp eq i64 %9, 0
  br i1 %cmpi41.not, label %if_cont, label %common.ret

common.ret:                                       ; preds = %if_cont, %fullev36, %fullev30, %fullev22, %fullev
  %common.ret.op = phi i32 [ %zext, %if_cont ], [ 1, %fullev30 ], [ 1, %fullev22 ], [ 1, %fullev ], [ 1, %fullev36 ]
  ret i32 %common.ret.op

if_cont:                                          ; preds = %fullev36, %fullev7, %body
  %10 = tail call addrspace(1) i64 @set_of(i32 %reg, i32 %insn)
  %NULL_RTX = load i64, ptr @NULL_RTX, align 8
  %cmpi54 = icmp ne i64 %10, %NULL_RTX
  %zext = zext i1 %cmpi54 to i32
  br label %common.ret
}

attributes #0 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
