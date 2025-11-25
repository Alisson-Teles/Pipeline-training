; ModuleID = 'angha-ll-stm32f1/extr_altera_jtag_uart_tty.c_aju_control_write.ll'
source_filename = "out/extr_altera_jtag_uart_tty.c_aju_control_write.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@ALTERA_JTAG_UART_CONTROL_OFF = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"altera_jtag_uart_softc:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @bus_write_4(i32, i32, i32) local_unnamed_addr addrspace(1) #1

declare i32 @htole32(i32) local_unnamed_addr addrspace(1) #1

define void @aju_control_write(ptr readonly captures(none) %sc, i32 %v) local_unnamed_addr addrspace(1) #1 {
body:
  %ajus_mem_res3 = load i32, ptr %sc, align 4
  %ALTERA_JTAG_UART_CONTROL_OFF = load i32, ptr @ALTERA_JTAG_UART_CONTROL_OFF, align 4
  %0 = tail call addrspace(1) i32 @htole32(i32 %v)
  %1 = tail call addrspace(1) i32 @bus_write_4(i32 %ajus_mem_res3, i32 %ALTERA_JTAG_UART_CONTROL_OFF, i32 %0)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
