; ModuleID = 'angha-ll-stm32f1/extr_drm_hashtab.c_drm_ht_remove_item.ll'
source_filename = "out/extr_drm_hashtab.c_drm_ht_remove_item.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@head = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"drm_open_hash:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"drm_hash_item:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @LIST_REMOVE(ptr, i32) local_unnamed_addr addrspace(1) #1

define noundef i32 @drm_ht_remove_item(ptr readnone captures(none) %ht, ptr %item) local_unnamed_addr addrspace(1) #1 {
body:
  %head = load i32, ptr @head, align 4
  %0 = tail call addrspace(1) i32 @LIST_REMOVE(ptr %item, i32 %head)
  ret i32 0
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
