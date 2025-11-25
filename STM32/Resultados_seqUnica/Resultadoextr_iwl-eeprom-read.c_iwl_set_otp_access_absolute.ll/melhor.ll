; ModuleID = 'angha-ll-stm32f1/extr_iwl-eeprom-read.c_iwl_set_otp_access_absolute.ll'
source_filename = "out/extr_iwl-eeprom-read.c_iwl_set_otp_access_absolute.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@CSR_OTP_GP_REG = local_unnamed_addr global i32 0
@CSR_OTP_GP_REG_OTP_ACCESS_MODE = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"iwl_trans:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @iwl_clear_bit(ptr, i32, i32) local_unnamed_addr addrspace(1) #1

declare i32 @iwl_read32(ptr, i32) local_unnamed_addr addrspace(1) #1

define void @iwl_set_otp_access_absolute(ptr %trans) local_unnamed_addr addrspace(1) #1 {
body:
  %CSR_OTP_GP_REG = load i32, ptr @CSR_OTP_GP_REG, align 4
  %0 = tail call addrspace(1) i32 @iwl_read32(ptr %trans, i32 %CSR_OTP_GP_REG)
  %CSR_OTP_GP_REG3 = load i32, ptr @CSR_OTP_GP_REG, align 4
  %CSR_OTP_GP_REG_OTP_ACCESS_MODE = load i32, ptr @CSR_OTP_GP_REG_OTP_ACCESS_MODE, align 4
  %1 = tail call addrspace(1) i32 @iwl_clear_bit(ptr %trans, i32 %CSR_OTP_GP_REG3, i32 %CSR_OTP_GP_REG_OTP_ACCESS_MODE)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
