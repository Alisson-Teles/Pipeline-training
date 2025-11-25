; ModuleID = 'angha-ll-stm32f1/extr_cedrus_hw.c_cedrus_hw_remove.ll'
source_filename = "out/extr_cedrus_hw.c_cedrus_hw_remove.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"cedrus_dev:init"(ptr writeonly captures(none) initializes((0, 20)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %_this, i8 0, i64 20, i1 false)
  ret void
}

declare i32 @clk_disable_unprepare(i32) local_unnamed_addr addrspace(1) #1

declare i32 @of_reserved_mem_device_release(i32) local_unnamed_addr addrspace(1) #1

declare i32 @reset_control_assert(i32) local_unnamed_addr addrspace(1) #1

declare i32 @sunxi_sram_release(i32) local_unnamed_addr addrspace(1) #1

define void @cedrus_hw_remove(ptr readonly captures(none) %dev) local_unnamed_addr addrspace(1) #1 {
body:
  %rstc = getelementptr inbounds nuw i8, ptr %dev, i32 16
  %rstc2 = load i32, ptr %rstc, align 4
  %0 = tail call addrspace(1) i32 @reset_control_assert(i32 %rstc2)
  %ram_clk = getelementptr inbounds nuw i8, ptr %dev, i32 12
  %ram_clk4 = load i32, ptr %ram_clk, align 4
  %1 = tail call addrspace(1) i32 @clk_disable_unprepare(i32 %ram_clk4)
  %mod_clk = getelementptr inbounds nuw i8, ptr %dev, i32 8
  %mod_clk6 = load i32, ptr %mod_clk, align 4
  %2 = tail call addrspace(1) i32 @clk_disable_unprepare(i32 %mod_clk6)
  %ahb_clk = getelementptr inbounds nuw i8, ptr %dev, i32 4
  %ahb_clk8 = load i32, ptr %ahb_clk, align 4
  %3 = tail call addrspace(1) i32 @clk_disable_unprepare(i32 %ahb_clk8)
  %dev11 = load i32, ptr %dev, align 4
  %4 = tail call addrspace(1) i32 @sunxi_sram_release(i32 %dev11)
  %dev14 = load i32, ptr %dev, align 4
  %5 = tail call addrspace(1) i32 @of_reserved_mem_device_release(i32 %dev14)
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
