; ModuleID = 'angha-ll-stm32f1/extr_sljitLir.c_function_check_dst.ll'
source_filename = "out/extr_sljitLir.c_function_check_dst.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@SLJIT_SP = local_unnamed_addr global i32 0
@SLJIT_UNUSED = local_unnamed_addr global i64 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"sljit_compiler:init"(ptr writeonly captures(none) initializes((0, 16)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %_this, i8 0, i64 16, i1 false)
  ret void
}

declare i64 @FUNCTION_CHECK_IS_REG(i64) local_unnamed_addr addrspace(1) #1

declare i64 @SLJIT_MEM1(i32) local_unnamed_addr addrspace(1) #1

declare i64 @function_check_src_mem(ptr, i64, i64) local_unnamed_addr addrspace(1) #1

define i64 @function_check_dst(ptr %compiler, i64 %p, i64 %i, i64 %unused) local_unnamed_addr addrspace(1) #1 {
body:
  %scratches5 = load i32, ptr %compiler, align 4
  %cmpi = icmp eq i32 %scratches5, -1
  br i1 %cmpi, label %common.ret, label %fullev

fullev:                                           ; preds = %body
  %saveds = getelementptr inbounds nuw i8, ptr %compiler, i32 4
  %saveds7 = load i32, ptr %saveds, align 4
  %cmpi8 = icmp eq i32 %saveds7, -1
  br i1 %cmpi8, label %common.ret, label %if_cont

common.ret:                                       ; preds = %if_cont44, %phiblock35, %if_then24, %fullev, %body
  %common.ret.op = phi i64 [ %zext, %if_then24 ], [ %zext42, %phiblock35 ], [ %2, %if_cont44 ], [ 0, %body ], [ 0, %fullev ]
  ret i64 %common.ret.op

if_cont:                                          ; preds = %fullev
  %0 = tail call addrspace(1) i64 @FUNCTION_CHECK_IS_REG(i64 %p)
  %cmpi10.not = icmp eq i64 %0, 0
  br i1 %cmpi10.not, label %fullev11, label %if_then24

fullev11:                                         ; preds = %if_cont
  %cmpi15.not = icmp ne i64 %unused, 0
  %SLJIT_UNUSED = load i64, ptr @SLJIT_UNUSED, align 8
  %cmpi20 = icmp eq i64 %p, %SLJIT_UNUSED
  %phi18 = select i1 %cmpi15.not, i1 %cmpi20, i1 false
  br i1 %phi18, label %if_then24, label %if_cont28

if_then24:                                        ; preds = %fullev11, %if_cont
  %cmpi26 = icmp eq i64 %i, 0
  %zext = zext i1 %cmpi26 to i64
  br label %common.ret

if_cont28:                                        ; preds = %fullev11
  %SLJIT_SP = load i32, ptr @SLJIT_SP, align 4
  %1 = tail call addrspace(1) i64 @SLJIT_MEM1(i32 %SLJIT_SP)
  %cmpi30 = icmp eq i64 %p, %1
  br i1 %cmpi30, label %if_then31, label %if_cont44

if_then31:                                        ; preds = %if_cont28
  %cmpi33 = icmp sgt i64 %i, -1
  br i1 %cmpi33, label %fullev34, label %phiblock35

fullev34:                                         ; preds = %if_then31
  %logical_local_size = getelementptr inbounds nuw i8, ptr %compiler, i32 8
  %logical_local_size39 = load i64, ptr %logical_local_size, align 8
  %cmpi40 = icmp slt i64 %i, %logical_local_size39
  br label %phiblock35

phiblock35:                                       ; preds = %fullev34, %if_then31
  %phi36 = phi i1 [ false, %if_then31 ], [ %cmpi40, %fullev34 ]
  %zext42 = zext i1 %phi36 to i64
  br label %common.ret

if_cont44:                                        ; preds = %if_cont28
  %2 = tail call addrspace(1) i64 @function_check_src_mem(ptr nonnull %compiler, i64 %p, i64 %i)
  br label %common.ret
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
