; ModuleID = 'angha-ll-stm32f1/extr_alloc-util.h_size_multiply_overflow.ll'
source_filename = "out/extr_alloc-util.h_size_multiply_overflow.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@SIZE_MAX = local_unnamed_addr global i32 0

declare i32 @_unlikely_(i32) local_unnamed_addr addrspace(1) #0

define i32 @size_multiply_overflow(i32 zeroext %size, i32 zeroext %need) local_unnamed_addr addrspace(1) #0 {
body:
  %cmpi.not = icmp eq i32 %need, 0
  br i1 %cmpi.not, label %phiblock, label %fullev

fullev:                                           ; preds = %body
  %SIZE_MAX = load i32, ptr @SIZE_MAX, align 4
  %binop = udiv i32 %SIZE_MAX, %need
  %cmpi6 = icmp ugt i32 %size, %binop
  %0 = zext i1 %cmpi6 to i32
  br label %phiblock

phiblock:                                         ; preds = %fullev, %body
  %phi = phi i32 [ 0, %body ], [ %0, %fullev ]
  %1 = tail call addrspace(1) i32 @_unlikely_(i32 %phi)
  ret i32 %1
}

attributes #0 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
