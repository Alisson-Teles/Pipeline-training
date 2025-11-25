; ModuleID = 'angha-ll-stm32f1/extr_ecp_smpl.c_ec_GFp_simple_group_clear_finish.ll'
source_filename = "out/extr_ecp_smpl.c_ec_GFp_simple_group_clear_finish.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"TYPE_3__:init"(ptr writeonly captures(none) initializes((0, 12)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  %gepa = getelementptr inbounds nuw i8, ptr %_this, i32 4
  store i32 0, ptr %gepa, align 4
  store i32 0, ptr %_this, align 4
  %gepfield = getelementptr inbounds nuw i8, ptr %_this, i32 8
  store i32 0, ptr %gepfield, align 4
  ret void
}

declare i32 @BN_clear_free(i32) local_unnamed_addr addrspace(1) #1

define void @ec_GFp_simple_group_clear_finish(ptr readonly captures(none) %group) local_unnamed_addr addrspace(1) #1 {
body:
  %field = getelementptr inbounds nuw i8, ptr %group, i32 8
  %field2 = load i32, ptr %field, align 4
  %0 = tail call addrspace(1) i32 @BN_clear_free(i32 %field2)
  %a = getelementptr inbounds nuw i8, ptr %group, i32 4
  %a4 = load i32, ptr %a, align 4
  %1 = tail call addrspace(1) i32 @BN_clear_free(i32 %a4)
  %b6 = load i32, ptr %group, align 4
  %2 = tail call addrspace(1) i32 @BN_clear_free(i32 %b6)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
