; ModuleID = 'angha-ll-stm32f1/extr_test-tcp-writealot.c_alloc_cb.ll'
source_filename = "out/extr_test-tcp-writealot.c_alloc_cb.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"TYPE_3__:init"(ptr writeonly captures(none) initializes((0, 8)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  %gepbase = getelementptr inbounds nuw i8, ptr %_this, i32 4
  store i32 0, ptr %gepbase, align 4
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @malloc(i32 zeroext) local_unnamed_addr addrspace(1) #1

define void @alloc_cb(i32 %handle, i32 zeroext %size, ptr writeonly captures(none) initializes((0, 8)) %buf) local_unnamed_addr addrspace(1) #1 {
body:
  %base = getelementptr inbounds nuw i8, ptr %buf, i32 4
  %0 = tail call addrspace(1) i32 @malloc(i32 zeroext %size)
  store i32 %0, ptr %base, align 4
  store i32 %size, ptr %buf, align 4
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
