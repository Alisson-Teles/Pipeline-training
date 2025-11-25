; ModuleID = 'angha-ll-stm32f1/extr_iso9660.c_unsetenv.ll'
source_filename = "out/extr_iso9660.c_unsetenv.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define noundef i32 @unsetenv(ptr readnone captures(none) %envname, i32 zeroext %envname.size) local_unnamed_addr addrspace(1) #0 {
body:
  ret i32 -1
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
