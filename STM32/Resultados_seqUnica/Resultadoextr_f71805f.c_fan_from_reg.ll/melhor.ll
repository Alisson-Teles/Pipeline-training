; ModuleID = 'angha-ll-stm32f1/extr_f71805f.c_fan_from_reg.ll'
source_filename = "out/extr_f71805f.c_fan_from_reg.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define range(i64 0, 1500001) i64 @fan_from_reg(i32 %reg) local_unnamed_addr addrspace(1) #0 {
body:
  %binop = and i32 %reg, 4095
  switch i32 %binop, label %if_cont [
    i32 4095, label %common.ret
    i32 0, label %common.ret
  ]

common.ret:                                       ; preds = %if_cont, %body, %body
  %common.ret.op = phi i64 [ %sext, %if_cont ], [ 0, %body ], [ 0, %body ]
  ret i64 %common.ret.op

if_cont:                                          ; preds = %body
  %binop6 = udiv i32 1500000, %binop
  %sext = zext nneg i32 %binop6 to i64
  br label %common.ret
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
