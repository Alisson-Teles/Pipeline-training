; ModuleID = 'angha-ll-stm32f1/extr_xt_hashlimit.c_hashlimit_pernet.ll'
source_filename = "out/extr_xt_hashlimit.c_hashlimit_pernet.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

%hashlimit_net = type { i32 }

@hashlimit_net_id = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"net:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"hashlimit_net:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare %hashlimit_net @net_generic(ptr, i32) local_unnamed_addr addrspace(1) #1

define %hashlimit_net @hashlimit_pernet(ptr %net) local_unnamed_addr addrspace(1) #1 {
body:
  %hashlimit_net_id = load i32, ptr @hashlimit_net_id, align 4
  %0 = tail call addrspace(1) %hashlimit_net @net_generic(ptr %net, i32 %hashlimit_net_id)
  ret %hashlimit_net %0
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
