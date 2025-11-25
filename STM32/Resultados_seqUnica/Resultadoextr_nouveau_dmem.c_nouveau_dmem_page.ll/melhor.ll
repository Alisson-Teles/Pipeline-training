; ModuleID = 'angha-ll-stm32f1/extr_nouveau_dmem.c_nouveau_dmem_page.ll'
source_filename = "out/extr_nouveau_dmem.c_nouveau_dmem_page.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"page:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"nouveau_drm:init"(ptr writeonly captures(none) initializes((0, 8)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i64 0, ptr %_this, align 8
  ret void
}

declare i64 @is_device_private_page(ptr) local_unnamed_addr addrspace(1) #1

declare i64 @page_to_dmem(ptr) local_unnamed_addr addrspace(1) #1

define range(i32 0, 2) i32 @nouveau_dmem_page(ptr readonly captures(none) %drm, ptr %page) local_unnamed_addr addrspace(1) #1 {
body:
  %0 = tail call addrspace(1) i64 @is_device_private_page(ptr %page)
  %cmpi.not = icmp eq i64 %0, 0
  br i1 %cmpi.not, label %phiblock, label %fullev

fullev:                                           ; preds = %body
  %dmem4 = load i64, ptr %drm, align 8
  %1 = tail call addrspace(1) i64 @page_to_dmem(ptr %page)
  %cmpi6 = icmp eq i64 %dmem4, %1
  %2 = zext i1 %cmpi6 to i32
  br label %phiblock

phiblock:                                         ; preds = %fullev, %body
  %phi = phi i32 [ 0, %body ], [ %2, %fullev ]
  ret i32 %phi
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
