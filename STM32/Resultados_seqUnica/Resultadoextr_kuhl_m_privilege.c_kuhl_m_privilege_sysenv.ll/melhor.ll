; ModuleID = 'angha-ll-stm32f1/extr_kuhl_m_privilege.c_kuhl_m_privilege_sysenv.ll'
source_filename = "out/extr_kuhl_m_privilege.c_kuhl_m_privilege_sysenv.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@SE_SYSTEM_ENVIRONMENT = local_unnamed_addr global i32 0

declare i32 @kuhl_m_privilege_simple(i32) local_unnamed_addr addrspace(1) #0

define i32 @kuhl_m_privilege_sysenv(i32 %argc, i32 %argv) local_unnamed_addr addrspace(1) #0 {
body:
  %SE_SYSTEM_ENVIRONMENT = load i32, ptr @SE_SYSTEM_ENVIRONMENT, align 4
  %0 = tail call addrspace(1) i32 @kuhl_m_privilege_simple(i32 %SE_SYSTEM_ENVIRONMENT)
  ret i32 %0
}

attributes #0 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
