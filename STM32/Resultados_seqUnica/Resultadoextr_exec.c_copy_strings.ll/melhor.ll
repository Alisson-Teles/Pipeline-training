; ModuleID = 'angha-ll-stm32f1/extr_exec.c_copy_strings.ll'
source_filename = "out/extr_exec.c_copy_strings.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

declare zeroext i32 @strings_size(ptr, i32 zeroext) local_unnamed_addr addrspace(1) #0

declare i64 @user_write(i32 zeroext, ptr, i32 zeroext, i32 zeroext) local_unnamed_addr addrspace(1) #0

define zeroext i32 @copy_strings(i32 zeroext %sp, ptr %strings, i32 zeroext %strings.size) local_unnamed_addr addrspace(1) #0 {
body:
  %0 = tail call zeroext addrspace(1) i32 @strings_size(ptr %strings, i32 zeroext %strings.size)
  %binop = sub i32 %sp, %0
  %1 = tail call addrspace(1) i64 @user_write(i32 zeroext %binop, ptr %strings, i32 zeroext %0, i32 zeroext %strings.size)
  %cmpi.not = icmp eq i64 %1, 0
  %spec.select = select i1 %cmpi.not, i32 %binop, i32 0
  ret i32 %spec.select
}

attributes #0 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
