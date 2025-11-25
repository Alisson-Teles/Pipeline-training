; ModuleID = 'angha-ll-stm32f1/extr_triangle-vulkan.c_demo_error_callback.ll'
source_filename = "out/extr_triangle-vulkan.c_demo_error_callback.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@stdout = local_unnamed_addr global i32 0
@conststr = private unnamed_addr constant [15 x i8] c"GLFW error: %s\0A"

declare i32 @fflush(i32) local_unnamed_addr addrspace(1) #0

declare i32 @printf(ptr, ptr, i32 zeroext, i32 zeroext) local_unnamed_addr addrspace(1) #0

define void @demo_error_callback(i32 %error, ptr %description, i32 zeroext %description.size) local_unnamed_addr addrspace(1) #0 {
body:
  %0 = tail call addrspace(1) i32 @printf(ptr nonnull @conststr, ptr %description, i32 zeroext 15, i32 zeroext %description.size)
  %stdout = load i32, ptr @stdout, align 4
  %1 = tail call addrspace(1) i32 @fflush(i32 %stdout)
  ret void
}

attributes #0 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
