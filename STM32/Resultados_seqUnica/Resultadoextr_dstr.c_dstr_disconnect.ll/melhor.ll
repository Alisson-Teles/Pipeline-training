; ModuleID = 'angha-ll-stm32f1/extr_dstr.c_dstr_disconnect.ll'
source_filename = "out/extr_dstr.c_dstr_disconnect.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"TYPE_3__:init"(ptr writeonly captures(none) initializes((0, 8)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  %gepsaved_r0 = getelementptr inbounds nuw i8, ptr %_this, i32 4
  store i32 0, ptr %gepsaved_r0, align 4
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @CCP(i32) local_unnamed_addr addrspace(1) #1

declare i32 @w0(i32) local_unnamed_addr addrspace(1) #1

declare i32 @w2(i32) local_unnamed_addr addrspace(1) #1

define void @dstr_disconnect(ptr readonly captures(none) %pi) local_unnamed_addr addrspace(1) #1 {
body:
  %0 = tail call addrspace(1) i32 @CCP(i32 48)
  %saved_r0 = getelementptr inbounds nuw i8, ptr %pi, i32 4
  %saved_r02 = load i32, ptr %saved_r0, align 4
  %1 = tail call addrspace(1) i32 @w0(i32 %saved_r02)
  %saved_r24 = load i32, ptr %pi, align 4
  %2 = tail call addrspace(1) i32 @w2(i32 %saved_r24)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
