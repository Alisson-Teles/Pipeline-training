; ModuleID = 'angha-ll-stm32f1/extr_keymap.c_layer_state_set_user.ll'
source_filename = "out/extr_keymap.c_layer_state_set_user.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@_ADJUST = local_unnamed_addr global i32 0
@_LOWER = local_unnamed_addr global i32 0
@_RAISE = local_unnamed_addr global i32 0

declare i32 @update_tri_layer_state(i32, i32, i32, i32) local_unnamed_addr addrspace(1) #0

define i32 @layer_state_set_user(i32 %state) local_unnamed_addr addrspace(1) #0 {
body:
  %_LOWER = load i32, ptr @_LOWER, align 4
  %_RAISE = load i32, ptr @_RAISE, align 4
  %_ADJUST = load i32, ptr @_ADJUST, align 4
  %0 = tail call addrspace(1) i32 @update_tri_layer_state(i32 %state, i32 %_LOWER, i32 %_RAISE, i32 %_ADJUST)
  ret i32 %0
}

attributes #0 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
