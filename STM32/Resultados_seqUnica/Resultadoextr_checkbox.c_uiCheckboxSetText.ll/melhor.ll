; ModuleID = 'angha-ll-stm32f1/extr_checkbox.c_uiCheckboxSetText.ll'
source_filename = "out/extr_checkbox.c_uiCheckboxSetText.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"TYPE_3__:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @GTK_BUTTON(i32) local_unnamed_addr addrspace(1) #1

declare i32 @gtk_button_set_label(i32, ptr, i32 zeroext) local_unnamed_addr addrspace(1) #1

define void @uiCheckboxSetText(ptr readonly captures(none) %c, ptr %text, i32 zeroext %text.size) local_unnamed_addr addrspace(1) #1 {
body:
  %button4 = load i32, ptr %c, align 4
  %0 = tail call addrspace(1) i32 @GTK_BUTTON(i32 %button4)
  %1 = tail call addrspace(1) i32 @gtk_button_set_label(i32 %0, ptr %text, i32 zeroext %text.size)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
