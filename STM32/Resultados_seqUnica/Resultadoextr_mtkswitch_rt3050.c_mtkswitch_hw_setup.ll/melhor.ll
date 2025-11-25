; ModuleID = 'angha-ll-stm32f1/extr_mtkswitch_rt3050.c_mtkswitch_hw_setup.ll'
source_filename = "out/extr_mtkswitch_rt3050.c_mtkswitch_hw_setup.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@FPA_ALL_AUTO = local_unnamed_addr global i32 0
@MTKSWITCH_FPA = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"mtkswitch_softc:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @MTKSWITCH_WRITE(ptr, i32, i32) local_unnamed_addr addrspace(1) #1

define noundef i32 @mtkswitch_hw_setup(ptr %sc) local_unnamed_addr addrspace(1) #1 {
body:
  %MTKSWITCH_FPA = load i32, ptr @MTKSWITCH_FPA, align 4
  %FPA_ALL_AUTO = load i32, ptr @FPA_ALL_AUTO, align 4
  %0 = tail call addrspace(1) i32 @MTKSWITCH_WRITE(ptr %sc, i32 %MTKSWITCH_FPA, i32 %FPA_ALL_AUTO)
  ret i32 0
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
