; ModuleID = 'angha-ll-stm32f1/extr_qxl_cmd.c_qxl_io_flush_release.ll'
source_filename = "out/extr_qxl_cmd.c_qxl_io_flush_release.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@QXL_IO_FLUSH_RELEASE = local_unnamed_addr global i64 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"qxl_device:init"(ptr writeonly captures(none) initializes((0, 8)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i64 0, ptr %_this, align 8
  ret void
}

declare i32 @outb(i32, i64) local_unnamed_addr addrspace(1) #1

define void @qxl_io_flush_release(ptr readonly captures(none) %qdev) local_unnamed_addr addrspace(1) #1 {
body:
  %io_base2 = load i64, ptr %qdev, align 8
  %QXL_IO_FLUSH_RELEASE = load i64, ptr @QXL_IO_FLUSH_RELEASE, align 8
  %binop = add i64 %QXL_IO_FLUSH_RELEASE, %io_base2
  %0 = tail call addrspace(1) i32 @outb(i32 0, i64 %binop)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
