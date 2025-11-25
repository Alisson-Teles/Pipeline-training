; ModuleID = 'angha-ll-stm32f1/extr_panel-samsung-s6e8aa0.c_s6e8aa0_clear_error.ll'
source_filename = "out/extr_panel-samsung-s6e8aa0.c_s6e8aa0_clear_error.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"s6e8aa0:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite)
define i32 @s6e8aa0_clear_error(ptr captures(none) %ctx) local_unnamed_addr addrspace(1) #1 {
body:
  %error2 = load i32, ptr %ctx, align 4
  store i32 0, ptr %ctx, align 4
  ret i32 %error2
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
