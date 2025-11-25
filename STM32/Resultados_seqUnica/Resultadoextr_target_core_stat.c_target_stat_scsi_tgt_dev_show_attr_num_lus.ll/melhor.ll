; ModuleID = 'angha-ll-stm32f1/extr_target_core_stat.c_target_stat_scsi_tgt_dev_show_attr_num_lus.ll'
source_filename = "out/extr_target_core_stat.c_target_stat_scsi_tgt_dev_show_attr_num_lus.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@LU_COUNT = local_unnamed_addr global i32 0
@PAGE_SIZE = local_unnamed_addr global i32 0
@conststr = private unnamed_addr constant [3 x i8] c"%u\0A"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"se_dev_stat_grps:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @snprintf(ptr, i32, ptr, i32, i32 zeroext, i32 zeroext) local_unnamed_addr addrspace(1) #1

define i32 @target_stat_scsi_tgt_dev_show_attr_num_lus(ptr readnone captures(none) %sgrps, ptr %page, i32 zeroext %page.size) local_unnamed_addr addrspace(1) #1 {
body:
  %PAGE_SIZE = load i32, ptr @PAGE_SIZE, align 4
  %LU_COUNT = load i32, ptr @LU_COUNT, align 4
  %0 = tail call addrspace(1) i32 @snprintf(ptr %page, i32 %PAGE_SIZE, ptr nonnull @conststr, i32 %LU_COUNT, i32 zeroext %page.size, i32 zeroext 3)
  ret i32 %0
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
