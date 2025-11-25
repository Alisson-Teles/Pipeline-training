; ModuleID = 'angha-ll-stm32f1/extr_mac_sysv_shm.c_mac_sysvshm_check_shmat.ll'
source_filename = "out/extr_mac_sysv_shm.c_mac_sysvshm_check_shmat.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@sysvshm_check_shmat = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"ucred:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"shmid_kernel:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @MAC_CHECK_PROBE3(i32, i32, ptr, ptr, i32) local_unnamed_addr addrspace(1) #1

declare i32 @MAC_POLICY_CHECK_NOSLEEP(i32, ptr, ptr, i32, i32) local_unnamed_addr addrspace(1) #1

define noundef i32 @mac_sysvshm_check_shmat(ptr %cred, ptr %shmsegptr, i32 %shmflg) local_unnamed_addr addrspace(1) #1 {
body:
  %sysvshm_check_shmat = load i32, ptr @sysvshm_check_shmat, align 4
  %label6 = load i32, ptr %shmsegptr, align 4
  %0 = tail call addrspace(1) i32 @MAC_POLICY_CHECK_NOSLEEP(i32 %sysvshm_check_shmat, ptr %cred, ptr nonnull %shmsegptr, i32 %label6, i32 %shmflg)
  %sysvshm_check_shmat8 = load i32, ptr @sysvshm_check_shmat, align 4
  %1 = tail call addrspace(1) i32 @MAC_CHECK_PROBE3(i32 %sysvshm_check_shmat8, i32 0, ptr %cred, ptr nonnull %shmsegptr, i32 %shmflg)
  ret i32 0
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
