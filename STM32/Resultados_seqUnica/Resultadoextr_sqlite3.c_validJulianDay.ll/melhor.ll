; ModuleID = 'angha-ll-stm32f1/extr_sqlite3.c_validJulianDay.ll'
source_filename = "out/extr_sqlite3.c_validJulianDay.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@INT_464269060799999 = local_unnamed_addr global i64 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none)
define range(i32 0, 2) i32 @validJulianDay(i64 %iJD) local_unnamed_addr addrspace(1) #0 {
body:
  %cmpi = icmp sgt i64 %iJD, -1
  %INT_464269060799999 = load i64, ptr @INT_464269060799999, align 8
  %cmpi4 = icmp sle i64 %iJD, %INT_464269060799999
  %narrow = select i1 %cmpi, i1 %cmpi4, i1 false
  %phi = zext i1 %narrow to i32
  ret i32 %phi
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
