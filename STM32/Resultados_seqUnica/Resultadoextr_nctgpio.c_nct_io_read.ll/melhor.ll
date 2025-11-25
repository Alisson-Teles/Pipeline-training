; ModuleID = 'angha-ll-stm32f1/extr_nctgpio.c_nct_io_read.ll'
source_filename = "out/extr_nctgpio.c_nct_io_read.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"nct_softc:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @bus_read_1(i32, i32) local_unnamed_addr addrspace(1) #1

declare i32 @nct_io_set_group(ptr, i32) local_unnamed_addr addrspace(1) #1

define i32 @nct_io_read(ptr %sc, i32 %group, i32 %reg) local_unnamed_addr addrspace(1) #1 {
body:
  %0 = tail call addrspace(1) i32 @nct_io_set_group(ptr %sc, i32 %group)
  %iores6 = load i32, ptr %sc, align 4
  %1 = tail call addrspace(1) i32 @bus_read_1(i32 %iores6, i32 %reg)
  ret i32 %1
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
