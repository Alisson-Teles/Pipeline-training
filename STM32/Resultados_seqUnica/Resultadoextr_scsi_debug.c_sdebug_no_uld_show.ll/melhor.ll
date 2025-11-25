; ModuleID = 'angha-ll-stm32f1/extr_scsi_debug.c_sdebug_no_uld_show.ll'
source_filename = "out/extr_scsi_debug.c_sdebug_no_uld_show.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@PAGE_SIZE = local_unnamed_addr global i32 0
@scsi_debug_no_uld = local_unnamed_addr global i32 0
@conststr = private unnamed_addr constant [3 x i8] c"%d\0A"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"device_driver:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @scnprintf(ptr, i32, ptr, i32, i32 zeroext, i32 zeroext) local_unnamed_addr addrspace(1) #1

define i32 @sdebug_no_uld_show(ptr readnone captures(none) %ddp, ptr %buf, i32 zeroext %buf.size) local_unnamed_addr addrspace(1) #1 {
body:
  %PAGE_SIZE = load i32, ptr @PAGE_SIZE, align 4
  %scsi_debug_no_uld = load i32, ptr @scsi_debug_no_uld, align 4
  %0 = tail call addrspace(1) i32 @scnprintf(ptr %buf, i32 %PAGE_SIZE, ptr nonnull @conststr, i32 %scsi_debug_no_uld, i32 zeroext %buf.size, i32 zeroext 3)
  ret i32 %0
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
