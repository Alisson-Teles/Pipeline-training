; ModuleID = 'angha-ll-stm32f1/extr_mxsfb_drv.c_mxsfb_disable_axi_clk.ll'
source_filename = "out/extr_mxsfb_drv.c_mxsfb_disable_axi_clk.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"mxsfb_drm_private:init"(ptr writeonly captures(none) initializes((0, 8)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i64 0, ptr %_this, align 8
  ret void
}

declare i32 @clk_disable_unprepare(i64) local_unnamed_addr addrspace(1) #1

define void @mxsfb_disable_axi_clk(ptr readonly captures(none) %mxsfb) local_unnamed_addr addrspace(1) #1 {
body:
  %clk_axi2 = load i64, ptr %mxsfb, align 8
  %cmpi.not = icmp eq i64 %clk_axi2, 0
  br i1 %cmpi.not, label %if_cont, label %if_then

if_then:                                          ; preds = %body
  %0 = tail call addrspace(1) i32 @clk_disable_unprepare(i64 %clk_axi2)
  br label %if_cont

if_cont:                                          ; preds = %if_then, %body
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
