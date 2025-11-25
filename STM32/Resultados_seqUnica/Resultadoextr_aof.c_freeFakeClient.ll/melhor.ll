; ModuleID = 'angha-ll-stm32f1/extr_aof.c_freeFakeClient.ll'
source_filename = "out/extr_aof.c_freeFakeClient.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"client:init"(ptr writeonly captures(none) initializes((0, 12)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  %gepquerybuf = getelementptr inbounds nuw i8, ptr %_this, i32 8
  store i32 0, ptr %gepquerybuf, align 4
  %gepreply = getelementptr inbounds nuw i8, ptr %_this, i32 4
  store i32 0, ptr %gepreply, align 4
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @freeClientMultiState(ptr) local_unnamed_addr addrspace(1) #1

declare i32 @listRelease(i32) local_unnamed_addr addrspace(1) #1

declare i32 @sdsfree(i32) local_unnamed_addr addrspace(1) #1

declare i32 @zfree(ptr) local_unnamed_addr addrspace(1) #1

define void @freeFakeClient(ptr %c) local_unnamed_addr addrspace(1) #1 {
body:
  %querybuf = getelementptr inbounds nuw i8, ptr %c, i32 8
  %querybuf2 = load i32, ptr %querybuf, align 4
  %0 = tail call addrspace(1) i32 @sdsfree(i32 %querybuf2)
  %reply = getelementptr inbounds nuw i8, ptr %c, i32 4
  %reply4 = load i32, ptr %reply, align 4
  %1 = tail call addrspace(1) i32 @listRelease(i32 %reply4)
  %watched_keys6 = load i32, ptr %c, align 4
  %2 = tail call addrspace(1) i32 @listRelease(i32 %watched_keys6)
  %3 = tail call addrspace(1) i32 @freeClientMultiState(ptr nonnull %c)
  %4 = tail call addrspace(1) i32 @zfree(ptr nonnull %c)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
