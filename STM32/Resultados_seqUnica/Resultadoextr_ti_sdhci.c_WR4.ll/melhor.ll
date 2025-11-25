; ModuleID = 'angha-ll-stm32f1/extr_ti_sdhci.c_WR4.ll'
source_filename = "out/extr_ti_sdhci.c_WR4.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"ti_sdhci_softc:init"(ptr writeonly captures(none) initializes((0, 12)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  %gepmem_res = getelementptr inbounds nuw i8, ptr %_this, i32 8
  store i32 0, ptr %gepmem_res, align 4
  store i64 0, ptr %_this, align 8
  ret void
}

declare i32 @bus_write_4(i32, i64, i32) local_unnamed_addr addrspace(1) #1

define void @WR4(ptr readonly captures(none) %sc, i64 %off, i32 %val) local_unnamed_addr addrspace(1) #1 {
body:
  %mem_res = getelementptr inbounds nuw i8, ptr %sc, i32 8
  %mem_res4 = load i32, ptr %mem_res, align 4
  %sdhci_reg_off7 = load i64, ptr %sc, align 8
  %binop = add i64 %sdhci_reg_off7, %off
  %0 = tail call addrspace(1) i32 @bus_write_4(i32 %mem_res4, i64 %binop, i32 %val)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
