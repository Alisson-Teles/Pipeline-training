; ModuleID = 'angha-ll-stm32f1/extr_ecp_smpl.c_ec_GFp_simple_point_copy.ll'
source_filename = "out/extr_ecp_smpl.c_ec_GFp_simple_point_copy.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"TYPE_4__:init"(ptr writeonly captures(none) initializes((0, 20)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %_this, i8 0, i64 20, i1 false)
  ret void
}

declare i32 @BN_copy(i32, i32) local_unnamed_addr addrspace(1) #1

define range(i32 0, 2) i32 @ec_GFp_simple_point_copy(ptr captures(none) %dest, ptr readonly captures(none) %src) local_unnamed_addr addrspace(1) #1 {
body:
  %X = getelementptr inbounds nuw i8, ptr %dest, i32 16
  %X3 = load i32, ptr %X, align 4
  %X5 = getelementptr inbounds nuw i8, ptr %src, i32 16
  %X6 = load i32, ptr %X5, align 4
  %0 = tail call addrspace(1) i32 @BN_copy(i32 %X3, i32 %X6)
  %cmpi = icmp eq i32 %0, 0
  br i1 %cmpi, label %common.ret, label %if_cont

common.ret:                                       ; preds = %if_cont24, %if_cont15, %if_cont, %body
  %common.ret.op = phi i32 [ 1, %if_cont24 ], [ 0, %body ], [ 0, %if_cont ], [ 0, %if_cont15 ]
  ret i32 %common.ret.op

if_cont:                                          ; preds = %body
  %Y = getelementptr inbounds nuw i8, ptr %dest, i32 12
  %Y8 = load i32, ptr %Y, align 4
  %Y10 = getelementptr inbounds nuw i8, ptr %src, i32 12
  %Y11 = load i32, ptr %Y10, align 4
  %1 = tail call addrspace(1) i32 @BN_copy(i32 %Y8, i32 %Y11)
  %cmpi12 = icmp eq i32 %1, 0
  br i1 %cmpi12, label %common.ret, label %if_cont15

if_cont15:                                        ; preds = %if_cont
  %Z = getelementptr inbounds nuw i8, ptr %dest, i32 8
  %Z17 = load i32, ptr %Z, align 4
  %Z19 = getelementptr inbounds nuw i8, ptr %src, i32 8
  %Z20 = load i32, ptr %Z19, align 4
  %2 = tail call addrspace(1) i32 @BN_copy(i32 %Z17, i32 %Z20)
  %cmpi21 = icmp eq i32 %2, 0
  br i1 %cmpi21, label %common.ret, label %if_cont24

if_cont24:                                        ; preds = %if_cont15
  %Z_is_one = getelementptr inbounds nuw i8, ptr %dest, i32 4
  %Z_is_one27 = getelementptr inbounds nuw i8, ptr %src, i32 4
  %Z_is_one28 = load i32, ptr %Z_is_one27, align 4
  store i32 %Z_is_one28, ptr %Z_is_one, align 4
  %curve_name32 = load i32, ptr %src, align 4
  store i32 %curve_name32, ptr %dest, align 4
  br label %common.ret
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
