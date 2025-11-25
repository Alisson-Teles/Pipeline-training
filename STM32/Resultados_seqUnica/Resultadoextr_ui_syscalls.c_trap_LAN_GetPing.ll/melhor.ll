; ModuleID = 'angha-ll-stm32f1/extr_ui_syscalls.c_trap_LAN_GetPing.ll'
source_filename = "out/extr_ui_syscalls.c_trap_LAN_GetPing.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@UI_LAN_GETPING = local_unnamed_addr global i32 0

declare i32 @syscall(i32, i32, ptr, i32, ptr, i32 zeroext, i32 zeroext) local_unnamed_addr addrspace(1) #0

define void @trap_LAN_GetPing(i32 %n, ptr %buf, i32 %buflen, ptr %pingtime, i32 zeroext %buf.size, i32 zeroext %pingtime.size) local_unnamed_addr addrspace(1) #0 {
body:
  %UI_LAN_GETPING = load i32, ptr @UI_LAN_GETPING, align 4
  %0 = tail call addrspace(1) i32 @syscall(i32 %UI_LAN_GETPING, i32 %n, ptr %buf, i32 %buflen, ptr %pingtime, i32 zeroext %buf.size, i32 zeroext %pingtime.size)
  ret void
}

attributes #0 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
