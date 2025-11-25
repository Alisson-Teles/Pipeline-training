; ModuleID = 'angha-ll-stm32f1/extr_maestro3.c_m3_uninit.ll'
source_filename = "out/extr_maestro3.c_m3_uninit.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@CHANGE = local_unnamed_addr global i32 0
@conststr = private unnamed_addr constant [10 x i8] c"m3_uninit\0A"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"sc_info:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @M3_DEBUG(i32, ptr, i32 zeroext) local_unnamed_addr addrspace(1) #1

define noundef i32 @m3_uninit(ptr readnone captures(none) %sc) local_unnamed_addr addrspace(1) #1 {
body:
  %CHANGE = load i32, ptr @CHANGE, align 4
  %0 = tail call addrspace(1) i32 @M3_DEBUG(i32 %CHANGE, ptr nonnull @conststr, i32 zeroext 10)
  ret i32 0
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
