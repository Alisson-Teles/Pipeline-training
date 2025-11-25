; ModuleID = 'angha-ll-stm32f1/extr_monitors.c_framebuffer_size_callback.ll'
source_filename = "out/extr_monitors.c_framebuffer_size_callback.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@conststr = private unnamed_addr constant [29 x i8] c"Framebuffer resized to %ix%i\0A"

declare i32 @glViewport(i32, i32, i32, i32) local_unnamed_addr addrspace(1) #0

declare i32 @printf(ptr, i32, i32, i32 zeroext) local_unnamed_addr addrspace(1) #0

define void @framebuffer_size_callback(i32 %window, i32 %width, i32 %height) local_unnamed_addr addrspace(1) #0 {
body:
  %0 = tail call addrspace(1) i32 @printf(ptr nonnull @conststr, i32 %width, i32 %height, i32 zeroext 29)
  %1 = tail call addrspace(1) i32 @glViewport(i32 0, i32 0, i32 %width, i32 %height)
  ret void
}

attributes #0 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
