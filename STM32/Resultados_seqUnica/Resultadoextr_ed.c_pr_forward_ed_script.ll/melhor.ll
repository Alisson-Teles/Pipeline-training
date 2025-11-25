; ModuleID = 'angha-ll-stm32f1/extr_ed.c_pr_forward_ed_script.ll'
source_filename = "out/extr_ed.c_pr_forward_ed_script.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@find_change = local_unnamed_addr global i32 0
@pr_forward_ed_hunk = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"change:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @print_script(ptr, i32, i32) local_unnamed_addr addrspace(1) #1

define void @pr_forward_ed_script(ptr %script) local_unnamed_addr addrspace(1) #1 {
body:
  %find_change = load i32, ptr @find_change, align 4
  %pr_forward_ed_hunk = load i32, ptr @pr_forward_ed_hunk, align 4
  %0 = tail call addrspace(1) i32 @print_script(ptr %script, i32 %find_change, i32 %pr_forward_ed_hunk)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
