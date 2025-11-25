; ModuleID = 'angha-ll-stm32f1/extr_mac_test.c_test_posixsem_destroy_label.ll'
source_filename = "out/extr_mac_test.c_test_posixsem_destroy_label.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@MAGIC_POSIX_SEM = local_unnamed_addr global i32 0
@posixsem_destroy_label = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"label:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @COUNTER_INC(i32) local_unnamed_addr addrspace(1) #1

declare i32 @LABEL_DESTROY(ptr, i32) local_unnamed_addr addrspace(1) #1

define void @test_posixsem_destroy_label(ptr %label) local_unnamed_addr addrspace(1) #1 {
body:
  %MAGIC_POSIX_SEM = load i32, ptr @MAGIC_POSIX_SEM, align 4
  %0 = tail call addrspace(1) i32 @LABEL_DESTROY(ptr %label, i32 %MAGIC_POSIX_SEM)
  %posixsem_destroy_label = load i32, ptr @posixsem_destroy_label, align 4
  %1 = tail call addrspace(1) i32 @COUNTER_INC(i32 %posixsem_destroy_label)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
