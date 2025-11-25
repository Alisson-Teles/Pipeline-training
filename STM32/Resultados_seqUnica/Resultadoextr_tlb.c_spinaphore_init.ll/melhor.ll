; ModuleID = 'angha-ll-stm32f1/extr_tlb.c_spinaphore_init.ll'
source_filename = "out/extr_tlb.c_spinaphore_init.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"spinaphore:init"(ptr writeonly captures(none) initializes((0, 4), (8, 16)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  %gepticket = getelementptr inbounds nuw i8, ptr %_this, i32 8
  store i64 0, ptr %gepticket, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @spinaphore_init(ptr writeonly captures(none) initializes((0, 4), (8, 16)) %ss, i32 %val) local_unnamed_addr addrspace(1) #0 {
body:
  %ticket = getelementptr inbounds nuw i8, ptr %ss, i32 8
  store i64 0, ptr %ticket, align 8
  store i32 %val, ptr %ss, align 4
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
