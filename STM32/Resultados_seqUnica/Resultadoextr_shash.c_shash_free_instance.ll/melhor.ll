; ModuleID = 'angha-ll-stm32f1/extr_shash.c_shash_free_instance.ll'
source_filename = "out/extr_shash.c_shash_free_instance.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"crypto_instance:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @crypto_drop_spawn(i32) local_unnamed_addr addrspace(1) #1

declare i32 @crypto_instance_ctx(ptr) local_unnamed_addr addrspace(1) #1

declare i32 @kfree(i32) local_unnamed_addr addrspace(1) #1

declare i32 @shash_instance(ptr) local_unnamed_addr addrspace(1) #1

define void @shash_free_instance(ptr %inst) local_unnamed_addr addrspace(1) #1 {
body:
  %0 = tail call addrspace(1) i32 @crypto_instance_ctx(ptr %inst)
  %1 = tail call addrspace(1) i32 @crypto_drop_spawn(i32 %0)
  %2 = tail call addrspace(1) i32 @shash_instance(ptr %inst)
  %3 = tail call addrspace(1) i32 @kfree(i32 %2)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
