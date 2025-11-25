; ModuleID = 'angha-ll-stm32f1/extr_kv_smc.c_amdgpu_kv_smc_dpm_enable.ll'
source_filename = "out/extr_kv_smc.c_amdgpu_kv_smc_dpm_enable.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@PPSMC_MSG_DPM_Disable = local_unnamed_addr global i32 0
@PPSMC_MSG_DPM_Enable = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"amdgpu_device:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @amdgpu_kv_notify_message_to_smu(ptr, i32) local_unnamed_addr addrspace(1) #1

define i32 @amdgpu_kv_smc_dpm_enable(ptr %adev, i32 %enable) local_unnamed_addr addrspace(1) #1 {
body:
  %cmpi.not = icmp eq i32 %enable, 0
  %PPSMC_MSG_DPM_Disable.val = load i32, ptr @PPSMC_MSG_DPM_Disable, align 4
  %PPSMC_MSG_DPM_Enable.val = load i32, ptr @PPSMC_MSG_DPM_Enable, align 4
  %PPSMC_MSG_DPM_Disable = select i1 %cmpi.not, i32 %PPSMC_MSG_DPM_Disable.val, i32 %PPSMC_MSG_DPM_Enable.val
  %0 = tail call addrspace(1) i32 @amdgpu_kv_notify_message_to_smu(ptr %adev, i32 %PPSMC_MSG_DPM_Disable)
  ret i32 %0
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
