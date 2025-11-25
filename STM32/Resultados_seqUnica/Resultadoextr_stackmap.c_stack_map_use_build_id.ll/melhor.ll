; ModuleID = 'angha-ll-stm32f1/extr_stackmap.c_stack_map_use_build_id.ll'
source_filename = "out/extr_stackmap.c_stack_map_use_build_id.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@BPF_F_STACK_BUILD_ID = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"bpf_map:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none)
define i32 @stack_map_use_build_id(ptr readonly captures(none) %map) local_unnamed_addr addrspace(1) #1 {
body:
  %map_flags2 = load i32, ptr %map, align 4
  %BPF_F_STACK_BUILD_ID = load i32, ptr @BPF_F_STACK_BUILD_ID, align 4
  %binop = and i32 %BPF_F_STACK_BUILD_ID, %map_flags2
  ret i32 %binop
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
