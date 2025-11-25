; ModuleID = 'angha-ll-stm32f1/extr_cputest.c_cputest_force_flags.ll'
source_filename = "out/extr_cputest.c_cputest_force_flags.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@checked = local_unnamed_addr global i32 0
@flags = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none)
define void @cputest_force_flags(i32 %arg) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 %arg, ptr @flags, align 4
  store i32 1, ptr @checked, align 4
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
