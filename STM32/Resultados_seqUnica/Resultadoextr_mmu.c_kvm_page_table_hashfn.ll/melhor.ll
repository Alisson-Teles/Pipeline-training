; ModuleID = 'angha-ll-stm32f1/extr_mmu.c_kvm_page_table_hashfn.ll'
source_filename = "out/extr_mmu.c_kvm_page_table_hashfn.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@KVM_MMU_HASH_SHIFT = local_unnamed_addr global i32 0

declare i32 @hash_64(i32, i32) local_unnamed_addr addrspace(1) #0

define zeroext i32 @kvm_page_table_hashfn(i32 %gfn) local_unnamed_addr addrspace(1) #0 {
body:
  %KVM_MMU_HASH_SHIFT = load i32, ptr @KVM_MMU_HASH_SHIFT, align 4
  %0 = tail call addrspace(1) i32 @hash_64(i32 %gfn, i32 %KVM_MMU_HASH_SHIFT)
  ret i32 %0
}

attributes #0 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
