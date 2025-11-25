; ModuleID = 'angha-ll-stm32f1/extr_nbio_v7_4.c_nbio_v7_4_vcn_doorbell_range.ll'
source_filename = "out/extr_nbio_v7_4.c_nbio_v7_4_vcn_doorbell_range.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@BIF_MMSCH0_DOORBELL_RANGE = local_unnamed_addr global i32 0
@NBIO = local_unnamed_addr global i32 0
@OFFSET = local_unnamed_addr global i32 0
@SIZE = local_unnamed_addr global i32 0
@mmBIF_MMSCH0_DOORBELL_RANGE = local_unnamed_addr global i32 0
@mmBIF_MMSCH1_DOORBELL_RANGE = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"amdgpu_device:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @REG_SET_FIELD(i32, i32, i32, i32) local_unnamed_addr addrspace(1) #1

declare i32 @RREG32(i32) local_unnamed_addr addrspace(1) #1

declare i32 @SOC15_REG_OFFSET(i32, i32, i32) local_unnamed_addr addrspace(1) #1

declare i32 @WREG32(i32, i32) local_unnamed_addr addrspace(1) #1

define void @nbio_v7_4_vcn_doorbell_range(ptr readnone captures(none) %adev, i32 %use_doorbell, i32 %doorbell_index, i32 %instance) local_unnamed_addr addrspace(1) #1 {
body:
  %cmpi.not = icmp eq i32 %instance, 0
  %NBIO6 = load i32, ptr @NBIO, align 4
  %mmBIF_MMSCH0_DOORBELL_RANGE.val = load i32, ptr @mmBIF_MMSCH0_DOORBELL_RANGE, align 4
  %mmBIF_MMSCH1_DOORBELL_RANGE.val = load i32, ptr @mmBIF_MMSCH1_DOORBELL_RANGE, align 4
  %mmBIF_MMSCH0_DOORBELL_RANGE = select i1 %cmpi.not, i32 %mmBIF_MMSCH0_DOORBELL_RANGE.val, i32 %mmBIF_MMSCH1_DOORBELL_RANGE.val
  %0 = tail call addrspace(1) i32 @SOC15_REG_OFFSET(i32 %NBIO6, i32 0, i32 %mmBIF_MMSCH0_DOORBELL_RANGE)
  %1 = tail call addrspace(1) i32 @RREG32(i32 %0)
  %cmpi9.not = icmp eq i32 %use_doorbell, 0
  %BIF_MMSCH0_DOORBELL_RANGE17 = load i32, ptr @BIF_MMSCH0_DOORBELL_RANGE, align 4
  br i1 %cmpi9.not, label %if_else15, label %if_then10

if_then10:                                        ; preds = %body
  %OFFSET = load i32, ptr @OFFSET, align 4
  %2 = tail call addrspace(1) i32 @REG_SET_FIELD(i32 %1, i32 %BIF_MMSCH0_DOORBELL_RANGE17, i32 %OFFSET, i32 %doorbell_index)
  %BIF_MMSCH0_DOORBELL_RANGE14 = load i32, ptr @BIF_MMSCH0_DOORBELL_RANGE, align 4
  %SIZE = load i32, ptr @SIZE, align 4
  %3 = tail call addrspace(1) i32 @REG_SET_FIELD(i32 %2, i32 %BIF_MMSCH0_DOORBELL_RANGE14, i32 %SIZE, i32 8)
  br label %if_cont19

if_else15:                                        ; preds = %body
  %SIZE18 = load i32, ptr @SIZE, align 4
  %4 = tail call addrspace(1) i32 @REG_SET_FIELD(i32 %1, i32 %BIF_MMSCH0_DOORBELL_RANGE17, i32 %SIZE18, i32 0)
  br label %if_cont19

if_cont19:                                        ; preds = %if_else15, %if_then10
  %doorbell_range.0 = phi i32 [ %3, %if_then10 ], [ %4, %if_else15 ]
  %5 = tail call addrspace(1) i32 @WREG32(i32 %0, i32 %doorbell_range.0)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
