; ModuleID = 'angha-ll-stm32f1/extr_btf.c_btf_verifier_env_free.ll'
source_filename = "out/extr_btf.c_btf_verifier_env_free.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"btf_verifier_env:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @kfree(ptr) local_unnamed_addr addrspace(1) #1

declare i32 @kvfree(i32) local_unnamed_addr addrspace(1) #1

define void @btf_verifier_env_free(ptr %env) local_unnamed_addr addrspace(1) #1 {
body:
  %visit_states2 = load i32, ptr %env, align 4
  %0 = tail call addrspace(1) i32 @kvfree(i32 %visit_states2)
  %1 = tail call addrspace(1) i32 @kfree(ptr nonnull %env)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
