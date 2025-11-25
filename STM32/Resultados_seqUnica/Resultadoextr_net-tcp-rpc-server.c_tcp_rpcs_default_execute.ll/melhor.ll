; ModuleID = 'angha-ll-stm32f1/extr_net-tcp-rpc-server.c_tcp_rpcs_default_execute.ll'
source_filename = "out/extr_net-tcp-rpc-server.c_tcp_rpcs_default_execute.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@RPC_PING = local_unnamed_addr global i32 0
@RPC_PONG = local_unnamed_addr global i32 0
@precise_now = local_unnamed_addr global i32 0
@conststr = private unnamed_addr constant [35 x i8] c"rpcs_execute: fd=%d, op=%d, len=%d\0A"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"raw_message:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"connection:init"(ptr writeonly captures(none) initializes((0, 8)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  %gepfd = getelementptr inbounds nuw i8, ptr %_this, i32 4
  store i32 0, ptr %gepfd, align 4
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @assert(i32) local_unnamed_addr addrspace(1) #1

declare i32 @rwm_fetch_data(ptr, ptr, i32, i32 zeroext) local_unnamed_addr addrspace(1) #1

declare i32 @tcp_rpc_conn_send_data(ptr, i32, ptr, i32 zeroext) local_unnamed_addr addrspace(1) #1

declare i32 @vkprintf(i32, ptr, i32, i32, i32, i32 zeroext) local_unnamed_addr addrspace(1) #1

define noundef i32 @tcp_rpcs_default_execute(ptr %c, i32 %op, ptr %raw) local_unnamed_addr addrspace(1) #1 {
body:
  %Q = alloca [12 x i32], align 4
  %P = alloca [12 x i32], align 4
  %fd = getelementptr inbounds nuw i8, ptr %c, i32 4
  %fd4 = load i32, ptr %fd, align 4
  %total_bytes7 = load i32, ptr %raw, align 4
  %0 = tail call addrspace(1) i32 @vkprintf(i32 1, ptr nonnull @conststr, i32 %fd4, i32 %op, i32 %total_bytes7, i32 zeroext 35)
  %RPC_PING = load i32, ptr @RPC_PING, align 4
  %cmpi = icmp eq i32 %op, %RPC_PING
  br i1 %cmpi, label %fullev, label %common.ret

fullev:                                           ; preds = %body
  %total_bytes11 = load i32, ptr %raw, align 4
  %cmpi12 = icmp eq i32 %total_bytes11, 12
  br i1 %cmpi12, label %if_then, label %common.ret

common.ret:                                       ; preds = %if_then, %fullev, %body
  ret i32 0

if_then:                                          ; preds = %fullev
  %precise_now = load i32, ptr @precise_now, align 4
  store i32 %precise_now, ptr %c, align 4
  %elem14 = getelementptr inbounds nuw i8, ptr %Q, i32 4
  %elem15 = getelementptr inbounds nuw i8, ptr %Q, i32 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %Q, i8 0, i64 48, i1 false)
  %1 = call addrspace(1) i32 @rwm_fetch_data(ptr nonnull %raw, ptr nonnull %Q, i32 12, i32 zeroext 12)
  %cmpi26 = icmp eq i32 %1, 12
  %zext = zext i1 %cmpi26 to i32
  %2 = call addrspace(1) i32 @assert(i32 %zext)
  %elem28 = getelementptr inbounds nuw i8, ptr %P, i32 4
  %elem29 = getelementptr inbounds nuw i8, ptr %P, i32 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %P, i8 0, i64 48, i1 false)
  %RPC_PONG = load i32, ptr @RPC_PONG, align 4
  store i32 %RPC_PONG, ptr %P, align 4
  %deref41 = load i32, ptr %elem14, align 4
  store i32 %deref41, ptr %elem28, align 4
  %deref44 = load i32, ptr %elem15, align 4
  store i32 %deref44, ptr %elem29, align 4
  %3 = call addrspace(1) i32 @tcp_rpc_conn_send_data(ptr nonnull %c, i32 12, ptr nonnull %P, i32 zeroext 12)
  br label %common.ret
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
