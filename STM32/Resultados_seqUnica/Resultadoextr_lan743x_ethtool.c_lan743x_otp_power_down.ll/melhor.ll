; ModuleID = 'angha-ll-stm32f1/extr_lan743x_ethtool.c_lan743x_otp_power_down.ll'
source_filename = "out/extr_lan743x_ethtool.c_lan743x_otp_power_down.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@OTP_PWR_DN = local_unnamed_addr global i32 0
@OTP_PWR_DN_PWRDN_N_ = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"lan743x_adapter:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @lan743x_csr_read(ptr, i32) local_unnamed_addr addrspace(1) #1

declare i32 @lan743x_csr_write(ptr, i32, i32) local_unnamed_addr addrspace(1) #1

define void @lan743x_otp_power_down(ptr %adapter) local_unnamed_addr addrspace(1) #1 {
body:
  %OTP_PWR_DN = load i32, ptr @OTP_PWR_DN, align 4
  %0 = tail call addrspace(1) i32 @lan743x_csr_read(ptr %adapter, i32 %OTP_PWR_DN)
  %OTP_PWR_DN_PWRDN_N_ = load i32, ptr @OTP_PWR_DN_PWRDN_N_, align 4
  %binop = and i32 %OTP_PWR_DN_PWRDN_N_, %0
  %cmpi = icmp eq i32 %binop, 0
  br i1 %cmpi, label %if_then, label %if_cont

if_then:                                          ; preds = %body
  %binop4 = or i32 %OTP_PWR_DN_PWRDN_N_, %0
  %OTP_PWR_DN6 = load i32, ptr @OTP_PWR_DN, align 4
  %1 = tail call addrspace(1) i32 @lan743x_csr_write(ptr %adapter, i32 %OTP_PWR_DN6, i32 %binop4)
  br label %if_cont

if_cont:                                          ; preds = %if_then, %body
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
