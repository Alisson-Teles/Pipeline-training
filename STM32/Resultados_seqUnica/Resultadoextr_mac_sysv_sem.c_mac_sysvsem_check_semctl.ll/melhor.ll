; ModuleID = 'angha-ll-stm32f1/extr_mac_sysv_sem.c_mac_sysvsem_check_semctl.ll'
source_filename = "out/extr_mac_sysv_sem.c_mac_sysvsem_check_semctl.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@sysvsem_check_semctl = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"ucred:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"semid_kernel:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @MAC_CHECK_PROBE3(i32, i32, ptr, ptr, i32) local_unnamed_addr addrspace(1) #1

declare i32 @MAC_POLICY_CHECK_NOSLEEP(i32, ptr, ptr, i32, i32) local_unnamed_addr addrspace(1) #1

define noundef i32 @mac_sysvsem_check_semctl(ptr %cred, ptr %semakptr, i32 %cmd) local_unnamed_addr addrspace(1) #1 {
body:
  %sysvsem_check_semctl = load i32, ptr @sysvsem_check_semctl, align 4
  %label6 = load i32, ptr %semakptr, align 4
  %0 = tail call addrspace(1) i32 @MAC_POLICY_CHECK_NOSLEEP(i32 %sysvsem_check_semctl, ptr %cred, ptr nonnull %semakptr, i32 %label6, i32 %cmd)
  %sysvsem_check_semctl8 = load i32, ptr @sysvsem_check_semctl, align 4
  %1 = tail call addrspace(1) i32 @MAC_CHECK_PROBE3(i32 %sysvsem_check_semctl8, i32 0, ptr %cred, ptr nonnull %semakptr, i32 %cmd)
  ret i32 0
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
