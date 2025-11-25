; ModuleID = 'angha-ll-stm32f1/extr_dsa_lib.c_DSA_security_bits.ll'
source_filename = "out/extr_dsa_lib.c_DSA_security_bits.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"TYPE_3__:init"(ptr writeonly captures(none) initializes((0, 16)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %_this, i8 0, i64 16, i1 false)
  ret void
}

declare i32 @BN_num_bits(i64) local_unnamed_addr addrspace(1) #1

declare i32 @BN_security_bits(i32, i32) local_unnamed_addr addrspace(1) #1

define i32 @DSA_security_bits(ptr readonly captures(none) %d) local_unnamed_addr addrspace(1) #1 {
body:
  %p = getelementptr inbounds nuw i8, ptr %d, i32 8
  %p2 = load i64, ptr %p, align 8
  %cmpi.not = icmp eq i64 %p2, 0
  br i1 %cmpi.not, label %common.ret, label %fullev

fullev:                                           ; preds = %body
  %q4 = load i64, ptr %d, align 8
  %cmpi5.not = icmp eq i64 %q4, 0
  br i1 %cmpi5.not, label %common.ret, label %if_then

common.ret:                                       ; preds = %if_then, %fullev, %body
  %common.ret.op = phi i32 [ %2, %if_then ], [ -1, %fullev ], [ -1, %body ]
  ret i32 %common.ret.op

if_then:                                          ; preds = %fullev
  %0 = tail call addrspace(1) i32 @BN_num_bits(i64 %p2)
  %q11 = load i64, ptr %d, align 8
  %1 = tail call addrspace(1) i32 @BN_num_bits(i64 %q11)
  %2 = tail call addrspace(1) i32 @BN_security_bits(i32 %0, i32 %1)
  br label %common.ret
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
