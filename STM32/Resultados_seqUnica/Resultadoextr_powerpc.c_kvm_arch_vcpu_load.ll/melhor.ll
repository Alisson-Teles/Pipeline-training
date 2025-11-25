; ModuleID = 'angha-ll-stm32f1/extr_powerpc.c_kvm_arch_vcpu_load.ll'
source_filename = "out/extr_powerpc.c_kvm_arch_vcpu_load.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"kvm_vcpu:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @kvmppc_core_vcpu_load(ptr, i32) local_unnamed_addr addrspace(1) #1

define void @kvm_arch_vcpu_load(ptr %vcpu, i32 %cpu) local_unnamed_addr addrspace(1) #1 {
body:
  %0 = tail call addrspace(1) i32 @kvmppc_core_vcpu_load(ptr %vcpu, i32 %cpu)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
