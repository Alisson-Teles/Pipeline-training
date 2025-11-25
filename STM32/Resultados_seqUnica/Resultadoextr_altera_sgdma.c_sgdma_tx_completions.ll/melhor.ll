; ModuleID = 'angha-ll-stm32f1/extr_altera_sgdma.c_sgdma_tx_completions.ll'
source_filename = "out/extr_altera_sgdma.c_sgdma_tx_completions.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@SGDMA_CONTROL_HW_OWNED = local_unnamed_addr global i32 0
@control = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"altera_tse_private:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @csrrd8(i32, i32) local_unnamed_addr addrspace(1) #1

declare i64 @dequeue_tx(ptr) local_unnamed_addr addrspace(1) #1

declare i32 @sgdma_descroffs(i32) local_unnamed_addr addrspace(1) #1

declare i32 @sgdma_txbusy(ptr) local_unnamed_addr addrspace(1) #1

define range(i32 0, 2) i32 @sgdma_tx_completions(ptr %priv) local_unnamed_addr addrspace(1) #1 {
body:
  %0 = tail call addrspace(1) i32 @sgdma_txbusy(ptr %priv)
  %cmpi = icmp eq i32 %0, 0
  br i1 %cmpi, label %fullev, label %phiblock7

fullev:                                           ; preds = %body
  %tx_dma_desc3 = load i32, ptr %priv, align 4
  %control = load i32, ptr @control, align 4
  %1 = tail call addrspace(1) i32 @sgdma_descroffs(i32 %control)
  %2 = tail call addrspace(1) i32 @csrrd8(i32 %tx_dma_desc3, i32 %1)
  %SGDMA_CONTROL_HW_OWNED = load i32, ptr @SGDMA_CONTROL_HW_OWNED, align 4
  %binop = and i32 %SGDMA_CONTROL_HW_OWNED, %2
  %cmpi4 = icmp eq i32 %binop, 0
  br i1 %cmpi4, label %fullev6, label %phiblock7

fullev6:                                          ; preds = %fullev
  %3 = tail call addrspace(1) i64 @dequeue_tx(ptr nonnull %priv)
  %cmpi10 = icmp ne i64 %3, 0
  %4 = zext i1 %cmpi10 to i32
  br label %phiblock7

phiblock7:                                        ; preds = %fullev6, %fullev, %body
  %phi8 = phi i32 [ 0, %fullev ], [ %4, %fullev6 ], [ 0, %body ]
  ret i32 %phi8
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
