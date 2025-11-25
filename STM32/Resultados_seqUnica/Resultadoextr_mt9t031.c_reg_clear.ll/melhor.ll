; ModuleID = 'angha-ll-stm32f1/extr_mt9t031.c_reg_clear.ll'
source_filename = "out/extr_mt9t031.c_reg_clear.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"i2c_client:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @reg_read(ptr, i32) local_unnamed_addr addrspace(1) #1

declare i32 @reg_write(ptr, i32, i32) local_unnamed_addr addrspace(1) #1

define i32 @reg_clear(ptr %client, i32 %reg, i32 %data) local_unnamed_addr addrspace(1) #1 {
body:
  %0 = tail call addrspace(1) i32 @reg_read(ptr %client, i32 %reg)
  %cmpi = icmp slt i32 %0, 0
  br i1 %cmpi, label %common.ret, label %if_cont

common.ret:                                       ; preds = %if_cont, %body
  %common.ret.op = phi i32 [ %1, %if_cont ], [ %0, %body ]
  ret i32 %common.ret.op

if_cont:                                          ; preds = %body
  %neg = xor i32 %data, -1
  %binop = and i32 %0, %neg
  %1 = tail call addrspace(1) i32 @reg_write(ptr %client, i32 %reg, i32 %binop)
  br label %common.ret
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
