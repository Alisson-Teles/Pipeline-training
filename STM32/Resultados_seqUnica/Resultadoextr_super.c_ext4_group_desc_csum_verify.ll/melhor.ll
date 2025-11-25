; ModuleID = 'angha-ll-stm32f1/extr_super.c_ext4_group_desc_csum_verify.ll'
source_filename = "out/extr_super.c_ext4_group_desc_csum_verify.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"super_block:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"ext4_group_desc:init"(ptr writeonly captures(none) initializes((0, 8)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i64 0, ptr %_this, align 8
  ret void
}

declare i64 @ext4_group_desc_csum(ptr, i32, ptr) local_unnamed_addr addrspace(1) #1

declare i64 @ext4_has_group_desc_csum(ptr) local_unnamed_addr addrspace(1) #1

define range(i32 0, 2) i32 @ext4_group_desc_csum_verify(ptr %sb, i32 %block_group, ptr %gdp) local_unnamed_addr addrspace(1) #1 {
body:
  %0 = tail call addrspace(1) i64 @ext4_has_group_desc_csum(ptr %sb)
  %cmpi.not = icmp eq i64 %0, 0
  br i1 %cmpi.not, label %if_cont, label %fullev

fullev:                                           ; preds = %body
  %bg_checksum5 = load i64, ptr %gdp, align 8
  %1 = tail call addrspace(1) i64 @ext4_group_desc_csum(ptr %sb, i32 %block_group, ptr nonnull %gdp)
  %cmpi9.not = icmp eq i64 %bg_checksum5, %1
  br i1 %cmpi9.not, label %if_cont, label %common.ret

common.ret:                                       ; preds = %if_cont, %fullev
  %common.ret.op = phi i32 [ 1, %if_cont ], [ 0, %fullev ]
  ret i32 %common.ret.op

if_cont:                                          ; preds = %fullev, %body
  br label %common.ret
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
