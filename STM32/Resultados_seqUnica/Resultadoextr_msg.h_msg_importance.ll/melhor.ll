; ModuleID = 'angha-ll-stm32f1/extr_msg.h_msg_importance.ll'
source_filename = "out/extr_msg.h_msg_importance.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@MSG_BUNDLER = local_unnamed_addr global i32 0
@MSG_FRAGMENTER = local_unnamed_addr global i32 0
@TIPC_CRITICAL_IMPORTANCE = local_unnamed_addr global i32 0
@TIPC_SYSTEM_IMPORTANCE = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"tipc_msg:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i64 @likely(i32) local_unnamed_addr addrspace(1) #1

declare i32 @msg_bits(ptr, i32, i32, i32) local_unnamed_addr addrspace(1) #1

declare i32 @msg_errcode(ptr) local_unnamed_addr addrspace(1) #1

declare i32 @msg_user(ptr) local_unnamed_addr addrspace(1) #1

define i32 @msg_importance(ptr %m) local_unnamed_addr addrspace(1) #1 {
body:
  %0 = tail call addrspace(1) i32 @msg_user(ptr %m)
  %TIPC_CRITICAL_IMPORTANCE = load i32, ptr @TIPC_CRITICAL_IMPORTANCE, align 4
  %cmpi.not = icmp sgt i32 %0, %TIPC_CRITICAL_IMPORTANCE
  br i1 %cmpi.not, label %phiblock, label %fullev

fullev:                                           ; preds = %body
  %1 = tail call addrspace(1) i32 @msg_errcode(ptr %m)
  %cmpi5 = icmp eq i32 %1, 0
  %2 = zext i1 %cmpi5 to i32
  br label %phiblock

phiblock:                                         ; preds = %fullev, %body
  %phi = phi i32 [ 0, %body ], [ %2, %fullev ]
  %3 = tail call addrspace(1) i64 @likely(i32 %phi)
  %cmpi6.not = icmp eq i64 %3, 0
  br i1 %cmpi6.not, label %if_cont, label %common.ret

common.ret:                                       ; preds = %if_cont23, %if_then20, %phiblock
  %common.ret.op = phi i32 [ %4, %if_then20 ], [ %TIPC_SYSTEM_IMPORTANCE, %if_cont23 ], [ %0, %phiblock ]
  ret i32 %common.ret.op

if_cont:                                          ; preds = %phiblock
  %MSG_FRAGMENTER = load i32, ptr @MSG_FRAGMENTER, align 4
  %cmpi9 = icmp eq i32 %0, %MSG_FRAGMENTER
  %MSG_BUNDLER = load i32, ptr @MSG_BUNDLER, align 4
  %cmpi16 = icmp eq i32 %0, %MSG_BUNDLER
  %phi14 = select i1 %cmpi9, i1 true, i1 %cmpi16
  br i1 %phi14, label %if_then20, label %if_cont23

if_then20:                                        ; preds = %if_cont
  %4 = tail call addrspace(1) i32 @msg_bits(ptr %m, i32 9, i32 0, i32 7)
  br label %common.ret

if_cont23:                                        ; preds = %if_cont
  %TIPC_SYSTEM_IMPORTANCE = load i32, ptr @TIPC_SYSTEM_IMPORTANCE, align 4
  br label %common.ret
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
