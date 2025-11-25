; ModuleID = 'angha-ll-stm32f1/extr_connection.c_rds_conn_create_outgoing.ll'
source_filename = "out/extr_connection.c_rds_conn_create_outgoing.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

%rds_connection = type { i32 }

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"rds_transport:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"rds_connection:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"net:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"in6_addr:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare %rds_connection @__rds_conn_create(ptr, ptr, ptr, ptr, i32, i32, i32, i32) local_unnamed_addr addrspace(1) #1

define %rds_connection @rds_conn_create_outgoing(ptr %net, ptr %laddr, ptr %faddr, ptr %trans, i32 %tos, i32 %gfp, i32 %dev_if) local_unnamed_addr addrspace(1) #1 {
body:
  %0 = tail call addrspace(1) %rds_connection @__rds_conn_create(ptr %net, ptr %laddr, ptr %faddr, ptr %trans, i32 %gfp, i32 %tos, i32 1, i32 %dev_if)
  ret %rds_connection %0
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
