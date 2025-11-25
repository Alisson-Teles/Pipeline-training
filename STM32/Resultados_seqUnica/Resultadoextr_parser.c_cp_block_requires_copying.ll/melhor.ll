; ModuleID = 'angha-ll-stm32f1/extr_parser.c_cp_block_requires_copying.ll'
source_filename = "out/extr_parser.c_cp_block_requires_copying.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

declare i32 @TREE_TYPE(i32) local_unnamed_addr addrspace(1) #0

declare i64 @TYPE_HAS_CONSTRUCTOR(i32) local_unnamed_addr addrspace(1) #0

declare i64 @TYPE_NEEDS_CONSTRUCTING(i32) local_unnamed_addr addrspace(1) #0

declare i64 @block_requires_copying(i32) local_unnamed_addr addrspace(1) #0

define range(i32 0, 2) i32 @cp_block_requires_copying(i32 %exp) local_unnamed_addr addrspace(1) #0 {
body:
  %0 = tail call addrspace(1) i64 @block_requires_copying(i32 %exp)
  %cmpi.not = icmp eq i64 %0, 0
  br i1 %cmpi.not, label %fullev, label %phiblock6

fullev:                                           ; preds = %body
  %1 = tail call addrspace(1) i32 @TREE_TYPE(i32 %exp)
  %2 = tail call addrspace(1) i64 @TYPE_HAS_CONSTRUCTOR(i32 %1)
  %cmpi4.not = icmp eq i64 %2, 0
  br i1 %cmpi4.not, label %fullev5, label %phiblock6

fullev5:                                          ; preds = %fullev
  %3 = tail call addrspace(1) i32 @TREE_TYPE(i32 %exp)
  %4 = tail call addrspace(1) i64 @TYPE_NEEDS_CONSTRUCTING(i32 %3)
  %cmpi9 = icmp ne i64 %4, 0
  %5 = zext i1 %cmpi9 to i32
  br label %phiblock6

phiblock6:                                        ; preds = %fullev5, %fullev, %body
  %phi7 = phi i32 [ 1, %fullev ], [ %5, %fullev5 ], [ 1, %body ]
  ret i32 %phi7
}

attributes #0 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
