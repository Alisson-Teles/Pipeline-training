; ModuleID = 'angha-ll-stm32f1/extr_smiapp-quirk.c_jt8ev1_limits.ll'
source_filename = "out/extr_smiapp-quirk.c_jt8ev1_limits.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@SMIAPP_LIMIT_MIN_LINE_BLANKING_PCK_BIN = local_unnamed_addr global i32 0
@SMIAPP_LIMIT_X_ADDR_MAX = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"smiapp_sensor:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @smiapp_replace_limit(ptr, i32, i32) local_unnamed_addr addrspace(1) #1

define noundef i32 @jt8ev1_limits(ptr %sensor) local_unnamed_addr addrspace(1) #1 {
body:
  %SMIAPP_LIMIT_X_ADDR_MAX = load i32, ptr @SMIAPP_LIMIT_X_ADDR_MAX, align 4
  %0 = tail call addrspace(1) i32 @smiapp_replace_limit(ptr %sensor, i32 %SMIAPP_LIMIT_X_ADDR_MAX, i32 4271)
  %SMIAPP_LIMIT_MIN_LINE_BLANKING_PCK_BIN = load i32, ptr @SMIAPP_LIMIT_MIN_LINE_BLANKING_PCK_BIN, align 4
  %1 = tail call addrspace(1) i32 @smiapp_replace_limit(ptr %sensor, i32 %SMIAPP_LIMIT_MIN_LINE_BLANKING_PCK_BIN, i32 184)
  ret i32 0
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
