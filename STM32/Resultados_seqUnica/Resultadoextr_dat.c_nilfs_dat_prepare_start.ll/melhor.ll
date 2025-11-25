; ModuleID = 'angha-ll-stm32f1/extr_dat.c_nilfs_dat_prepare_start.ll'
source_filename = "out/extr_dat.c_nilfs_dat_prepare_start.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@ENOENT = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"nilfs_palloc_req:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"inode:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @WARN_ON(i32) local_unnamed_addr addrspace(1) #1

declare i32 @nilfs_dat_prepare_entry(ptr, ptr, i32) local_unnamed_addr addrspace(1) #1

define i32 @nilfs_dat_prepare_start(ptr %dat, ptr %req) local_unnamed_addr addrspace(1) #1 {
body:
  %0 = tail call addrspace(1) i32 @nilfs_dat_prepare_entry(ptr %dat, ptr %req, i32 0)
  %ENOENT = load i32, ptr @ENOENT, align 4
  %binop = sub i32 0, %ENOENT
  %cmpi = icmp eq i32 %0, %binop
  %zext = zext i1 %cmpi to i32
  %1 = tail call addrspace(1) i32 @WARN_ON(i32 %zext)
  ret i32 %0
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
