; ModuleID = 'angha-ll-stm32f1/extr_spi.c_SPI_scroll_cursor_fetch.ll'
source_filename = "out/extr_spi.c_SPI_scroll_cursor_fetch.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@DestSPI = local_unnamed_addr global i32 0

declare i32 @CreateDestReceiver(i32) local_unnamed_addr addrspace(1) #0

declare i32 @_SPI_cursor_operation(i32, i32, i64, i32) local_unnamed_addr addrspace(1) #0

define void @SPI_scroll_cursor_fetch(i32 %portal, i32 %direction, i64 %count) local_unnamed_addr addrspace(1) #0 {
body:
  %DestSPI = load i32, ptr @DestSPI, align 4
  %0 = tail call addrspace(1) i32 @CreateDestReceiver(i32 %DestSPI)
  %1 = tail call addrspace(1) i32 @_SPI_cursor_operation(i32 %portal, i32 %direction, i64 %count, i32 %0)
  ret void
}

attributes #0 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
