; ModuleID = 'angha-ll-stm32f1/extr_mmu.c_kvm_mips_gpa_pte_to_gva_mapped.ll'
source_filename = "out/extr_mmu.c_kvm_mips_gpa_pte_to_gva_mapped.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@ENTRYLO_D = local_unnamed_addr global i64 0

declare i32 @kvm_mips_gpa_pte_to_gva_unmapped(i32) local_unnamed_addr addrspace(1) #0

declare i32 @pte_mkclean(i32) local_unnamed_addr addrspace(1) #0

define i32 @kvm_mips_gpa_pte_to_gva_mapped(i32 %pte, i64 %entrylo) local_unnamed_addr addrspace(1) #0 {
body:
  %ENTRYLO_D = load i64, ptr @ENTRYLO_D, align 8
  %binop = and i64 %ENTRYLO_D, %entrylo
  %cmpi = icmp eq i64 %binop, 0
  br i1 %cmpi, label %if_then, label %if_cont

if_then:                                          ; preds = %body
  %0 = tail call addrspace(1) i32 @pte_mkclean(i32 %pte)
  br label %if_cont

if_cont:                                          ; preds = %if_then, %body
  %pte1.0 = phi i32 [ %0, %if_then ], [ %pte, %body ]
  %1 = tail call addrspace(1) i32 @kvm_mips_gpa_pte_to_gva_unmapped(i32 %pte1.0)
  ret i32 %1
}

attributes #0 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
