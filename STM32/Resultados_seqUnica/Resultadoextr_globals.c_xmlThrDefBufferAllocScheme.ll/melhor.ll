; ModuleID = 'angha-ll-stm32f1/extr_globals.c_xmlThrDefBufferAllocScheme.ll'
source_filename = "out/extr_globals.c_xmlThrDefBufferAllocScheme.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@xmlBufferAllocSchemeThrDef = local_unnamed_addr global i32 0
@xmlThrDefMutex = local_unnamed_addr global i32 0

declare i32 @xmlMutexLock(i32) local_unnamed_addr addrspace(1) #0

declare i32 @xmlMutexUnlock(i32) local_unnamed_addr addrspace(1) #0

define i32 @xmlThrDefBufferAllocScheme(i32 %v) local_unnamed_addr addrspace(1) #0 {
body:
  %xmlThrDefMutex = load i32, ptr @xmlThrDefMutex, align 4
  %0 = tail call addrspace(1) i32 @xmlMutexLock(i32 %xmlThrDefMutex)
  %xmlBufferAllocSchemeThrDef = load i32, ptr @xmlBufferAllocSchemeThrDef, align 4
  store i32 %v, ptr @xmlBufferAllocSchemeThrDef, align 4
  %xmlThrDefMutex3 = load i32, ptr @xmlThrDefMutex, align 4
  %1 = tail call addrspace(1) i32 @xmlMutexUnlock(i32 %xmlThrDefMutex3)
  ret i32 %xmlBufferAllocSchemeThrDef
}

attributes #0 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
