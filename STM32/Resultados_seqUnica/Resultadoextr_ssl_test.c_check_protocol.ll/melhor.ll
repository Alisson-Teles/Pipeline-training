; ModuleID = 'angha-ll-stm32f1/extr_ssl_test.c_check_protocol.ll'
source_filename = "out/extr_ssl_test.c_check_protocol.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@conststr = private unnamed_addr constant [41 x i8] c"Client has protocol %s but server has %s."
@conststr.1 = private unnamed_addr constant [40 x i8] c"Protocol mismatch: expected %s, got %s.\0A"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"TYPE_6__:init"(ptr writeonly captures(none) initializes((0, 16)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %_this, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"TYPE_5__:init"(ptr writeonly captures(none) initializes((0, 8)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i64 0, ptr %_this, align 8
  ret void
}

declare i32 @TEST_info(ptr, i32, i32, i32 zeroext) local_unnamed_addr addrspace(1) #1

declare i32 @TEST_int_eq(i64, i64) local_unnamed_addr addrspace(1) #1

declare i32 @ssl_protocol_name(i64) local_unnamed_addr addrspace(1) #1

define range(i32 0, 2) i32 @check_protocol(ptr readonly captures(none) %result, ptr readonly captures(none) %test_ctx) local_unnamed_addr addrspace(1) #1 {
body:
  %client_protocol3 = load i64, ptr %result, align 8
  %server_protocol = getelementptr inbounds nuw i8, ptr %result, i32 8
  %server_protocol5 = load i64, ptr %server_protocol, align 8
  %0 = tail call addrspace(1) i32 @TEST_int_eq(i64 %client_protocol3, i64 %server_protocol5)
  %cmpi = icmp eq i32 %0, 0
  br i1 %cmpi, label %if_then, label %if_cont

common.ret:                                       ; preds = %if_then23, %if_then15, %if_cont, %if_then
  %common.ret.op = phi i32 [ 0, %if_then ], [ 0, %if_then23 ], [ 1, %if_cont ], [ 1, %if_then15 ]
  ret i32 %common.ret.op

if_then:                                          ; preds = %body
  %client_protocol8 = load i64, ptr %result, align 8
  %1 = tail call addrspace(1) i32 @ssl_protocol_name(i64 %client_protocol8)
  %server_protocol11 = load i64, ptr %server_protocol, align 8
  %2 = tail call addrspace(1) i32 @ssl_protocol_name(i64 %server_protocol11)
  %3 = tail call addrspace(1) i32 @TEST_info(ptr nonnull @conststr, i32 %1, i32 %2, i32 zeroext 41)
  br label %common.ret

if_cont:                                          ; preds = %body
  %expected_protocol13 = load i64, ptr %test_ctx, align 8
  %cmpi14.not = icmp eq i64 %expected_protocol13, 0
  br i1 %cmpi14.not, label %common.ret, label %if_then15

if_then15:                                        ; preds = %if_cont
  %client_protocol18 = load i64, ptr %result, align 8
  %4 = tail call addrspace(1) i32 @TEST_int_eq(i64 %client_protocol18, i64 %expected_protocol13)
  %cmpi22 = icmp eq i32 %4, 0
  br i1 %cmpi22, label %if_then23, label %common.ret

if_then23:                                        ; preds = %if_then15
  %expected_protocol26 = load i64, ptr %test_ctx, align 8
  %5 = tail call addrspace(1) i32 @ssl_protocol_name(i64 %expected_protocol26)
  %client_protocol29 = load i64, ptr %result, align 8
  %6 = tail call addrspace(1) i32 @ssl_protocol_name(i64 %client_protocol29)
  %7 = tail call addrspace(1) i32 @TEST_info(ptr nonnull @conststr.1, i32 %5, i32 %6, i32 zeroext 40)
  br label %common.ret
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
