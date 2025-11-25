; ModuleID = 'angha-ll-stm32f1/extr_f2fs.h_f2fs_cp_error.ll'
source_filename = "out/extr_f2fs.h_f2fs_cp_error.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@CP_ERROR_FLAG = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"f2fs_sb_info:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @is_set_ckpt_flags(ptr, i32) local_unnamed_addr addrspace(1) #1

define i32 @f2fs_cp_error(ptr %sbi) local_unnamed_addr addrspace(1) #1 {
body:
  %CP_ERROR_FLAG = load i32, ptr @CP_ERROR_FLAG, align 4
  %0 = tail call addrspace(1) i32 @is_set_ckpt_flags(ptr %sbi, i32 %CP_ERROR_FLAG)
  ret i32 %0
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
