; ModuleID = 'angha-ll-stm32f1/extr_run.c_parse_script_a.ll'
source_filename = "out/extr_run.c_parse_script_a.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@SCRIPTITEM_GLOBALMEMBERS = local_unnamed_addr global i32 0

declare i32 @parse_script_af(i32, ptr, i32 zeroext) local_unnamed_addr addrspace(1) #0

define void @parse_script_a(ptr %src, i32 zeroext %src.size) local_unnamed_addr addrspace(1) #0 {
body:
  %SCRIPTITEM_GLOBALMEMBERS = load i32, ptr @SCRIPTITEM_GLOBALMEMBERS, align 4
  %0 = tail call addrspace(1) i32 @parse_script_af(i32 %SCRIPTITEM_GLOBALMEMBERS, ptr %src, i32 zeroext %src.size)
  ret void
}

attributes #0 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
