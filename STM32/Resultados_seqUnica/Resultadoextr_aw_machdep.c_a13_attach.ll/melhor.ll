; ModuleID = 'angha-ll-stm32f1/extr_aw_machdep.c_a13_attach.ll'
source_filename = "out/extr_aw_machdep.c_a13_attach.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@ALLWINNERSOC_A13 = local_unnamed_addr global i32 0
@ALLWINNERSOC_SUN5I = local_unnamed_addr global i32 0
@soc_family = local_unnamed_addr global i32 0
@soc_type = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none)
define noundef i32 @a13_attach(i32 %plat) local_unnamed_addr addrspace(1) #0 {
body:
  %ALLWINNERSOC_A13 = load i32, ptr @ALLWINNERSOC_A13, align 4
  store i32 %ALLWINNERSOC_A13, ptr @soc_type, align 4
  %ALLWINNERSOC_SUN5I = load i32, ptr @ALLWINNERSOC_SUN5I, align 4
  store i32 %ALLWINNERSOC_SUN5I, ptr @soc_family, align 4
  ret i32 0
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
