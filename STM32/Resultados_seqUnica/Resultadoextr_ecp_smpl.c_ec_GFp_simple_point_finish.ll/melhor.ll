; ModuleID = 'angha-ll-stm32f1/extr_ecp_smpl.c_ec_GFp_simple_point_finish.ll'
source_filename = "out/extr_ecp_smpl.c_ec_GFp_simple_point_finish.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"TYPE_3__:init"(ptr writeonly captures(none) initializes((0, 12)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  %gepX = getelementptr inbounds nuw i8, ptr %_this, i32 8
  store i32 0, ptr %gepX, align 4
  %gepY = getelementptr inbounds nuw i8, ptr %_this, i32 4
  store i32 0, ptr %gepY, align 4
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @BN_free(i32) local_unnamed_addr addrspace(1) #1

define void @ec_GFp_simple_point_finish(ptr readonly captures(none) %point) local_unnamed_addr addrspace(1) #1 {
body:
  %X = getelementptr inbounds nuw i8, ptr %point, i32 8
  %X2 = load i32, ptr %X, align 4
  %0 = tail call addrspace(1) i32 @BN_free(i32 %X2)
  %Y = getelementptr inbounds nuw i8, ptr %point, i32 4
  %Y4 = load i32, ptr %Y, align 4
  %1 = tail call addrspace(1) i32 @BN_free(i32 %Y4)
  %Z6 = load i32, ptr %point, align 4
  %2 = tail call addrspace(1) i32 @BN_free(i32 %Z6)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
