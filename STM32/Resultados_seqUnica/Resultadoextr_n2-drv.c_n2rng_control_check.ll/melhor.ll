; ModuleID = 'angha-ll-stm32f1/extr_n2-drv.c_n2rng_control_check.ll'
source_filename = "out/extr_n2-drv.c_n2rng_control_check.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"n2rng:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @n2rng_control_selftest(ptr, i32) local_unnamed_addr addrspace(1) #1

define i32 @n2rng_control_check(ptr %np) local_unnamed_addr addrspace(1) #1 {
body:
  %num_units39 = load i32, ptr %np, align 4
  %cmpi10 = icmp sgt i32 %num_units39, 0
  br i1 %cmpi10, label %while_body, label %common.ret

while_cond:                                       ; preds = %while_body
  %binop = add nuw nsw i32 %i.011, 1
  %num_units3 = load i32, ptr %np, align 4
  %cmpi = icmp slt i32 %binop, %num_units3
  br i1 %cmpi, label %while_body, label %common.ret

while_body:                                       ; preds = %while_cond, %body
  %i.011 = phi i32 [ %binop, %while_cond ], [ 0, %body ]
  %0 = tail call addrspace(1) i32 @n2rng_control_selftest(ptr nonnull %np, i32 %i.011)
  %cmpi7.not = icmp eq i32 %0, 0
  br i1 %cmpi7.not, label %while_cond, label %common.ret

common.ret:                                       ; preds = %while_body, %while_cond, %body
  %common.ret.op = phi i32 [ 0, %body ], [ 0, %while_cond ], [ %0, %while_body ]
  ret i32 %common.ret.op
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
