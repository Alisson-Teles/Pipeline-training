; ModuleID = 'angha-ll-stm32f1/extr_ov5645.c_ov5645_set_saturation.ll'
source_filename = "out/extr_ov5645.c_ov5645_set_saturation.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@OV5645_SDE_SAT_U = local_unnamed_addr global i32 0
@OV5645_SDE_SAT_V = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"ov5645:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @ov5645_write_reg(ptr, i32, i32) local_unnamed_addr addrspace(1) #1

define i32 @ov5645_set_saturation(ptr %ov5645, i32 %value) local_unnamed_addr addrspace(1) #1 {
body:
  %binop = shl i32 %value, 4
  %binop4 = add i32 %binop, 64
  %OV5645_SDE_SAT_U = load i32, ptr @OV5645_SDE_SAT_U, align 4
  %0 = tail call addrspace(1) i32 @ov5645_write_reg(ptr %ov5645, i32 %OV5645_SDE_SAT_U, i32 %binop4)
  %cmpi = icmp slt i32 %0, 0
  br i1 %cmpi, label %common.ret, label %if_cont

common.ret:                                       ; preds = %if_cont, %body
  %common.ret.op = phi i32 [ %1, %if_cont ], [ %0, %body ]
  ret i32 %common.ret.op

if_cont:                                          ; preds = %body
  %OV5645_SDE_SAT_V = load i32, ptr @OV5645_SDE_SAT_V, align 4
  %1 = tail call addrspace(1) i32 @ov5645_write_reg(ptr %ov5645, i32 %OV5645_SDE_SAT_V, i32 %binop4)
  br label %common.ret
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
