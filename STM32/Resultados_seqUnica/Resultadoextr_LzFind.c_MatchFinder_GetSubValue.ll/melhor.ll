; ModuleID = 'angha-ll-stm32f1/extr_LzFind.c_MatchFinder_GetSubValue.ll'
source_filename = "out/extr_LzFind.c_MatchFinder_GetSubValue.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@kNormalizeMask = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"TYPE_3__:init"(ptr writeonly captures(none) initializes((0, 8)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  %gephistorySize = getelementptr inbounds nuw i8, ptr %_this, i32 4
  store i32 0, ptr %gephistorySize, align 4
  store i32 0, ptr %_this, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none)
define i32 @MatchFinder_GetSubValue(ptr readonly captures(none) %p) local_unnamed_addr addrspace(1) #1 {
body:
  %pos2 = load i32, ptr %p, align 4
  %historySize = getelementptr inbounds nuw i8, ptr %p, i32 4
  %historySize4 = load i32, ptr %historySize, align 4
  %0 = xor i32 %historySize4, -1
  %binop5 = add i32 %pos2, %0
  %kNormalizeMask = load i32, ptr @kNormalizeMask, align 4
  %binop6 = and i32 %binop5, %kNormalizeMask
  ret i32 %binop6
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
