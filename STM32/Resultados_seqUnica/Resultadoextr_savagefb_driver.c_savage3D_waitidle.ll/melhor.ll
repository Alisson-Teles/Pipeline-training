; ModuleID = 'angha-ll-stm32f1/extr_savagefb_driver.c_savage3D_waitidle.ll'
source_filename = "out/extr_savagefb_driver.c_savage3D_waitidle.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"savagefb_par:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @savage_in32(i32, ptr) local_unnamed_addr addrspace(1) #1

define void @savage3D_waitidle(ptr %par) local_unnamed_addr addrspace(1) #1 {
body:
  br label %while_cond

while_cond:                                       ; preds = %while_cond, %body
  %0 = tail call addrspace(1) i32 @savage_in32(i32 297984, ptr %par)
  %binop = and i32 %0, 589823
  %cmpi.not = icmp eq i32 %binop, 524288
  br i1 %cmpi.not, label %while_end, label %while_cond

while_end:                                        ; preds = %while_cond
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
