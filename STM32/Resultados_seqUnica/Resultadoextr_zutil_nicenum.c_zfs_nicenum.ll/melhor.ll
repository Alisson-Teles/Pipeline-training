; ModuleID = 'angha-ll-stm32f1/extr_zutil_nicenum.c_zfs_nicenum.ll'
source_filename = "out/extr_zutil_nicenum.c_zfs_nicenum.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@ZFS_NICENUM_1024 = local_unnamed_addr global i32 0

declare i32 @zfs_nicenum_format(i32, ptr, i32 zeroext, i32, i32 zeroext) local_unnamed_addr addrspace(1) #0

define void @zfs_nicenum(i32 %num, ptr %buf, i32 zeroext %buflen, i32 zeroext %buf.size) local_unnamed_addr addrspace(1) #0 {
body:
  %ZFS_NICENUM_1024 = load i32, ptr @ZFS_NICENUM_1024, align 4
  %0 = tail call addrspace(1) i32 @zfs_nicenum_format(i32 %num, ptr %buf, i32 zeroext %buflen, i32 %ZFS_NICENUM_1024, i32 zeroext %buf.size)
  ret void
}

attributes #0 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
