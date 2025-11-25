; ModuleID = 'angha-ll-stm32f1/extr_onenand_base.c_onenand_block_isbad.ll'
source_filename = "out/extr_onenand_base.c_onenand_block_isbad.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@FL_READING = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"mtd_info:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @onenand_block_isbad_nolock(ptr, i32, i32) local_unnamed_addr addrspace(1) #1

declare i32 @onenand_get_device(ptr, i32) local_unnamed_addr addrspace(1) #1

declare i32 @onenand_release_device(ptr) local_unnamed_addr addrspace(1) #1

define i32 @onenand_block_isbad(ptr %mtd, i32 %ofs) local_unnamed_addr addrspace(1) #1 {
body:
  %FL_READING = load i32, ptr @FL_READING, align 4
  %0 = tail call addrspace(1) i32 @onenand_get_device(ptr %mtd, i32 %FL_READING)
  %1 = tail call addrspace(1) i32 @onenand_block_isbad_nolock(ptr %mtd, i32 %ofs, i32 0)
  %2 = tail call addrspace(1) i32 @onenand_release_device(ptr %mtd)
  ret i32 %1
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
