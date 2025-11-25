; ModuleID = 'angha-ll-stm32f1/extr_gmc_v6_0.c_gmc_v6_0_set_fault_enable_default.ll'
source_filename = "out/extr_gmc_v6_0.c_gmc_v6_0_set_fault_enable_default.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@DUMMY_PAGE_PROTECTION_FAULT_ENABLE_DEFAULT = local_unnamed_addr global i32 0
@PDE0_PROTECTION_FAULT_ENABLE_DEFAULT = local_unnamed_addr global i32 0
@RANGE_PROTECTION_FAULT_ENABLE_DEFAULT = local_unnamed_addr global i32 0
@READ_PROTECTION_FAULT_ENABLE_DEFAULT = local_unnamed_addr global i32 0
@VALID_PROTECTION_FAULT_ENABLE_DEFAULT = local_unnamed_addr global i32 0
@VM_CONTEXT1_CNTL = local_unnamed_addr global i32 0
@WRITE_PROTECTION_FAULT_ENABLE_DEFAULT = local_unnamed_addr global i32 0
@mmVM_CONTEXT1_CNTL = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"amdgpu_device:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @REG_SET_FIELD(i32, i32, i32, i32) local_unnamed_addr addrspace(1) #1

declare i32 @RREG32(i32) local_unnamed_addr addrspace(1) #1

declare i32 @WREG32(i32, i32) local_unnamed_addr addrspace(1) #1

define void @gmc_v6_0_set_fault_enable_default(ptr readnone captures(none) %adev, i32 %value) local_unnamed_addr addrspace(1) #1 {
body:
  %mmVM_CONTEXT1_CNTL = load i32, ptr @mmVM_CONTEXT1_CNTL, align 4
  %0 = tail call addrspace(1) i32 @RREG32(i32 %mmVM_CONTEXT1_CNTL)
  %VM_CONTEXT1_CNTL = load i32, ptr @VM_CONTEXT1_CNTL, align 4
  %RANGE_PROTECTION_FAULT_ENABLE_DEFAULT = load i32, ptr @RANGE_PROTECTION_FAULT_ENABLE_DEFAULT, align 4
  %1 = tail call addrspace(1) i32 @REG_SET_FIELD(i32 %0, i32 %VM_CONTEXT1_CNTL, i32 %RANGE_PROTECTION_FAULT_ENABLE_DEFAULT, i32 %value)
  %VM_CONTEXT1_CNTL6 = load i32, ptr @VM_CONTEXT1_CNTL, align 4
  %DUMMY_PAGE_PROTECTION_FAULT_ENABLE_DEFAULT = load i32, ptr @DUMMY_PAGE_PROTECTION_FAULT_ENABLE_DEFAULT, align 4
  %2 = tail call addrspace(1) i32 @REG_SET_FIELD(i32 %1, i32 %VM_CONTEXT1_CNTL6, i32 %DUMMY_PAGE_PROTECTION_FAULT_ENABLE_DEFAULT, i32 %value)
  %VM_CONTEXT1_CNTL9 = load i32, ptr @VM_CONTEXT1_CNTL, align 4
  %PDE0_PROTECTION_FAULT_ENABLE_DEFAULT = load i32, ptr @PDE0_PROTECTION_FAULT_ENABLE_DEFAULT, align 4
  %3 = tail call addrspace(1) i32 @REG_SET_FIELD(i32 %2, i32 %VM_CONTEXT1_CNTL9, i32 %PDE0_PROTECTION_FAULT_ENABLE_DEFAULT, i32 %value)
  %VM_CONTEXT1_CNTL12 = load i32, ptr @VM_CONTEXT1_CNTL, align 4
  %VALID_PROTECTION_FAULT_ENABLE_DEFAULT = load i32, ptr @VALID_PROTECTION_FAULT_ENABLE_DEFAULT, align 4
  %4 = tail call addrspace(1) i32 @REG_SET_FIELD(i32 %3, i32 %VM_CONTEXT1_CNTL12, i32 %VALID_PROTECTION_FAULT_ENABLE_DEFAULT, i32 %value)
  %VM_CONTEXT1_CNTL15 = load i32, ptr @VM_CONTEXT1_CNTL, align 4
  %READ_PROTECTION_FAULT_ENABLE_DEFAULT = load i32, ptr @READ_PROTECTION_FAULT_ENABLE_DEFAULT, align 4
  %5 = tail call addrspace(1) i32 @REG_SET_FIELD(i32 %4, i32 %VM_CONTEXT1_CNTL15, i32 %READ_PROTECTION_FAULT_ENABLE_DEFAULT, i32 %value)
  %VM_CONTEXT1_CNTL18 = load i32, ptr @VM_CONTEXT1_CNTL, align 4
  %WRITE_PROTECTION_FAULT_ENABLE_DEFAULT = load i32, ptr @WRITE_PROTECTION_FAULT_ENABLE_DEFAULT, align 4
  %6 = tail call addrspace(1) i32 @REG_SET_FIELD(i32 %5, i32 %VM_CONTEXT1_CNTL18, i32 %WRITE_PROTECTION_FAULT_ENABLE_DEFAULT, i32 %value)
  %mmVM_CONTEXT1_CNTL20 = load i32, ptr @mmVM_CONTEXT1_CNTL, align 4
  %7 = tail call addrspace(1) i32 @WREG32(i32 %mmVM_CONTEXT1_CNTL20, i32 %6)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
