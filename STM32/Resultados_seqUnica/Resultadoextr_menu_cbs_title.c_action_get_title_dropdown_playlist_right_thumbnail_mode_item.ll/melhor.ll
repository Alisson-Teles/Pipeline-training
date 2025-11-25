; ModuleID = 'angha-ll-stm32f1/extr_menu_cbs_title.c_action_get_title_dropdown_playlist_right_thumbnail_mode_item.ll'
source_filename = "out/extr_menu_cbs_title.c_action_get_title_dropdown_playlist_right_thumbnail_mode_item.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

declare i32 @action_get_title_thumbnails(ptr, ptr, i32 zeroext, ptr, i32 zeroext, i32 zeroext, i32 zeroext, i32 zeroext) local_unnamed_addr addrspace(1) #0

define i32 @action_get_title_dropdown_playlist_right_thumbnail_mode_item(ptr %path, ptr %label, i32 zeroext %menu_type, ptr %s, i32 zeroext %len, i32 zeroext %path.size, i32 zeroext %label.size, i32 zeroext %s.size) local_unnamed_addr addrspace(1) #0 {
body:
  %0 = tail call addrspace(1) i32 @action_get_title_thumbnails(ptr %path, ptr %label, i32 zeroext %menu_type, ptr %s, i32 zeroext %len, i32 zeroext %path.size, i32 zeroext %label.size, i32 zeroext %s.size)
  ret i32 %0
}

attributes #0 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
