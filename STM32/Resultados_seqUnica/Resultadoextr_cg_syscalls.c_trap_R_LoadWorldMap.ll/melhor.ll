; ModuleID = 'angha-ll-stm32f1/extr_cg_syscalls.c_trap_R_LoadWorldMap.ll'
source_filename = "out/extr_cg_syscalls.c_trap_R_LoadWorldMap.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@CG_R_LOADWORLDMAP = local_unnamed_addr global i32 0

declare i32 @syscall(i32, ptr, i32 zeroext) local_unnamed_addr addrspace(1) #0

define void @trap_R_LoadWorldMap(ptr %mapname, i32 zeroext %mapname.size) local_unnamed_addr addrspace(1) #0 {
body:
  %CG_R_LOADWORLDMAP = load i32, ptr @CG_R_LOADWORLDMAP, align 4
  %0 = tail call addrspace(1) i32 @syscall(i32 %CG_R_LOADWORLDMAP, ptr %mapname, i32 zeroext %mapname.size)
  ret void
}

attributes #0 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
