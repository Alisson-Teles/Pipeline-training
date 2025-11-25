; ModuleID = 'angha-ll-stm32f1/extr_spca561.c_sd_init_12a.ll'
source_filename = "out/extr_spca561.c_sd_init_12a.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@D_STREAM = local_unnamed_addr global i32 0
@conststr = private unnamed_addr constant [20 x i8] c"Chip revision: 012a\0A"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"gspca_dev:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @gspca_dbg(ptr, i32, ptr, i32 zeroext) local_unnamed_addr addrspace(1) #1

declare i32 @init_161rev12A(ptr) local_unnamed_addr addrspace(1) #1

define noundef i32 @sd_init_12a(ptr %gspca_dev) local_unnamed_addr addrspace(1) #1 {
body:
  %D_STREAM = load i32, ptr @D_STREAM, align 4
  %0 = tail call addrspace(1) i32 @gspca_dbg(ptr %gspca_dev, i32 %D_STREAM, ptr nonnull @conststr, i32 zeroext 20)
  %1 = tail call addrspace(1) i32 @init_161rev12A(ptr %gspca_dev)
  ret i32 0
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
