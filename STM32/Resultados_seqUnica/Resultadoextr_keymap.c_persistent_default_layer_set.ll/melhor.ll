; ModuleID = 'angha-ll-stm32f1/extr_keymap.c_persistent_default_layer_set.ll'
source_filename = "out/extr_keymap.c_persistent_default_layer_set.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

declare i32 @default_layer_set(i32) local_unnamed_addr addrspace(1) #0

declare i32 @eeconfig_update_default_layer(i32) local_unnamed_addr addrspace(1) #0

define void @persistent_default_layer_set(i32 %default_layer) local_unnamed_addr addrspace(1) #0 {
body:
  %0 = tail call addrspace(1) i32 @eeconfig_update_default_layer(i32 %default_layer)
  %1 = tail call addrspace(1) i32 @default_layer_set(i32 %default_layer)
  ret void
}

attributes #0 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
