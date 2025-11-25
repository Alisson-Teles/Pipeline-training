; ModuleID = 'angha-ll-stm32f1/extr_callchain.h_callchain_cumul_counts.ll'
source_filename = "out/extr_callchain.h_callchain_cumul_counts.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"callchain_node:init"(ptr writeonly captures(none) initializes((0, 8)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  %gepchildren_count = getelementptr inbounds nuw i8, ptr %_this, i32 4
  store i32 0, ptr %gepchildren_count, align 4
  store i32 0, ptr %_this, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read)
define zeroext i32 @callchain_cumul_counts(ptr readonly captures(none) %node) local_unnamed_addr addrspace(1) #1 {
body:
  %count2 = load i32, ptr %node, align 4
  %children_count = getelementptr inbounds nuw i8, ptr %node, i32 4
  %children_count4 = load i32, ptr %children_count, align 4
  %binop = add i32 %children_count4, %count2
  ret i32 %binop
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
