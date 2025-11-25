; ModuleID = 'angha-ll-stm32f1/extr_kvm_minidump_aarch64.c__aarch64_entry_to_prot.ll'
source_filename = "out/extr_kvm_minidump_aarch64.c__aarch64_entry_to_prot.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@AARCH64_ATTR_AP_RO = local_unnamed_addr global i32 0
@AARCH64_ATTR_XN = local_unnamed_addr global i32 0
@VM_PROT_EXECUTE = local_unnamed_addr global i32 0
@VM_PROT_READ = local_unnamed_addr global i32 0
@VM_PROT_WRITE = local_unnamed_addr global i32 0

declare i32 @AARCH64_ATTR_AP(i32) local_unnamed_addr addrspace(1) #0

define i32 @_aarch64_entry_to_prot(i32 %pte) local_unnamed_addr addrspace(1) #0 {
body:
  %VM_PROT_READ = load i32, ptr @VM_PROT_READ, align 4
  %AARCH64_ATTR_AP_RO = load i32, ptr @AARCH64_ATTR_AP_RO, align 4
  %0 = tail call addrspace(1) i32 @AARCH64_ATTR_AP(i32 %AARCH64_ATTR_AP_RO)
  %binop = and i32 %0, %pte
  %cmpi = icmp eq i32 %binop, 0
  %VM_PROT_WRITE = load i32, ptr @VM_PROT_WRITE, align 4
  %binop3 = select i1 %cmpi, i32 %VM_PROT_WRITE, i32 0
  %prot.0 = or i32 %binop3, %VM_PROT_READ
  %AARCH64_ATTR_XN = load i32, ptr @AARCH64_ATTR_XN, align 4
  %binop5 = and i32 %AARCH64_ATTR_XN, %pte
  %cmpi6 = icmp eq i32 %binop5, 0
  %VM_PROT_EXECUTE = load i32, ptr @VM_PROT_EXECUTE, align 4
  %binop9 = select i1 %cmpi6, i32 %VM_PROT_EXECUTE, i32 0
  %prot.1 = or i32 %prot.0, %binop9
  ret i32 %prot.1
}

attributes #0 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
