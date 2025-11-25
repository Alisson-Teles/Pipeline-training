; ModuleID = 'angha-ll-stm32f1/extr_if_vtbe.c_pio_enable_irq.ll'
source_filename = "out/extr_if_vtbe.c_pio_enable_irq.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@vtbe_intr = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"vtbe_softc:init"(ptr writeonly captures(none) initializes((0, 8)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  %geppio_recv = getelementptr inbounds nuw i8, ptr %_this, i32 4
  store i32 0, ptr %geppio_recv, align 4
  ret void
}

declare i32 @PIO_SETUP_IRQ(i32, i32, ptr) local_unnamed_addr addrspace(1) #1

declare i32 @PIO_TEARDOWN_IRQ(i32) local_unnamed_addr addrspace(1) #1

define noundef i32 @pio_enable_irq(ptr %sc, i32 %enable) local_unnamed_addr addrspace(1) #1 {
body:
  %cmpi.not = icmp eq i32 %enable, 0
  %opened15 = load i32, ptr %sc, align 4
  br i1 %cmpi.not, label %if_else12, label %if_then

if_then:                                          ; preds = %body
  %cmpi5 = icmp eq i32 %opened15, 0
  br i1 %cmpi5, label %if_then6, label %if_cont25

if_then6:                                         ; preds = %if_then
  store i32 1, ptr %sc, align 4
  %pio_recv = getelementptr inbounds nuw i8, ptr %sc, i32 4
  %pio_recv10 = load i32, ptr %pio_recv, align 4
  %vtbe_intr = load i32, ptr @vtbe_intr, align 4
  %0 = tail call addrspace(1) i32 @PIO_SETUP_IRQ(i32 %pio_recv10, i32 %vtbe_intr, ptr nonnull %sc)
  br label %if_cont25

if_else12:                                        ; preds = %body
  %cmpi16 = icmp eq i32 %opened15, 1
  br i1 %cmpi16, label %if_then17, label %if_cont25

if_then17:                                        ; preds = %if_else12
  %pio_recv19 = getelementptr inbounds nuw i8, ptr %sc, i32 4
  %pio_recv20 = load i32, ptr %pio_recv19, align 4
  %1 = tail call addrspace(1) i32 @PIO_TEARDOWN_IRQ(i32 %pio_recv20)
  store i32 0, ptr %sc, align 4
  br label %if_cont25

if_cont25:                                        ; preds = %if_then17, %if_else12, %if_then6, %if_then
  ret i32 0
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
