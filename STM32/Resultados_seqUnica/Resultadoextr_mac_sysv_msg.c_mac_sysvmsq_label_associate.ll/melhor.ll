; ModuleID = 'angha-ll-stm32f1/extr_mac_sysv_msg.c_mac_sysvmsq_label_associate.ll'
source_filename = "out/extr_mac_sysv_msg.c_mac_sysvmsq_label_associate.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@sysvmsq_label_associate = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"msqid_kernel:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @MAC_PERFORM(i32, i32, ptr, i32) local_unnamed_addr addrspace(1) #1

define void @mac_sysvmsq_label_associate(i32 %cred, ptr %msqptr) local_unnamed_addr addrspace(1) #1 {
body:
  %sysvmsq_label_associate = load i32, ptr @sysvmsq_label_associate, align 4
  %label5 = load i32, ptr %msqptr, align 4
  %0 = tail call addrspace(1) i32 @MAC_PERFORM(i32 %sysvmsq_label_associate, i32 %cred, ptr nonnull %msqptr, i32 %label5)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
