; ModuleID = 'angha-ll-stm32f1/extr_msu.c_msc_win_base.ll'
source_filename = "out/extr_msu.c_msc_win_base.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

%msc_block_desc = type { i32 }

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"msc_window:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"msc_block_desc:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @msc_win_base_sg(ptr) local_unnamed_addr addrspace(1) #1

declare %msc_block_desc @sg_virt(i32) local_unnamed_addr addrspace(1) #1

define %msc_block_desc @msc_win_base(ptr %win) local_unnamed_addr addrspace(1) #1 {
body:
  %0 = tail call addrspace(1) i32 @msc_win_base_sg(ptr %win)
  %1 = tail call addrspace(1) %msc_block_desc @sg_virt(i32 %0)
  ret %msc_block_desc %1
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
