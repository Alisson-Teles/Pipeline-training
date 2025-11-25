; ModuleID = 'angha-ll-stm32f1/extr_linux_misc.c_linux_msync.ll'
source_filename = "out/extr_linux_misc.c_linux_msync.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@LINUX_MS_SYNC = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"thread:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"linux_msync_args:init"(ptr writeonly captures(none) initializes((0, 12)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  %gepaddr = getelementptr inbounds nuw i8, ptr %_this, i32 8
  store i32 0, ptr %gepaddr, align 4
  store i32 0, ptr %_this, align 4
  %geplen = getelementptr inbounds nuw i8, ptr %_this, i32 4
  store i32 0, ptr %geplen, align 4
  ret void
}

declare i32 @kern_msync(ptr, i32, i32, i32) local_unnamed_addr addrspace(1) #1

define i32 @linux_msync(ptr %td, ptr readonly captures(none) %args) local_unnamed_addr addrspace(1) #1 {
body:
  %addr = getelementptr inbounds nuw i8, ptr %args, i32 8
  %addr4 = load i32, ptr %addr, align 4
  %len = getelementptr inbounds nuw i8, ptr %args, i32 4
  %len6 = load i32, ptr %len, align 4
  %fl8 = load i32, ptr %args, align 4
  %LINUX_MS_SYNC = load i32, ptr @LINUX_MS_SYNC, align 4
  %neg = xor i32 %LINUX_MS_SYNC, -1
  %binop = and i32 %fl8, %neg
  %0 = tail call addrspace(1) i32 @kern_msync(ptr %td, i32 %addr4, i32 %len6, i32 %binop)
  ret i32 %0
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
