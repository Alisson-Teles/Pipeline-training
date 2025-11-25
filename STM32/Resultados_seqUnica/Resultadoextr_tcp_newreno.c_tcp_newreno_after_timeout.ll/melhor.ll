; ModuleID = 'angha-ll-stm32f1/extr_tcp_newreno.c_tcp_newreno_after_timeout.ll'
source_filename = "out/extr_tcp_newreno.c_tcp_newreno_after_timeout.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@TCPS_ESTABLISHED = local_unnamed_addr global i64 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"tcpcb:init"(ptr writeonly captures(none) initializes((0, 24)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %_this, i8 0, i64 24, i1 false)
  ret void
}

declare i32 @min(i32, i32) local_unnamed_addr addrspace(1) #1

declare i32 @tcp_cc_resize_sndbuf(ptr) local_unnamed_addr addrspace(1) #1

define void @tcp_newreno_after_timeout(ptr %tp) local_unnamed_addr addrspace(1) #1 {
body:
  %t_state2 = load i64, ptr %tp, align 8
  %TCPS_ESTABLISHED = load i64, ptr @TCPS_ESTABLISHED, align 8
  %cmpi.not = icmp slt i64 %t_state2, %TCPS_ESTABLISHED
  br i1 %cmpi.not, label %if_cont26, label %if_then

if_then:                                          ; preds = %body
  %snd_wnd = getelementptr inbounds nuw i8, ptr %tp, i32 20
  %snd_wnd4 = load i32, ptr %snd_wnd, align 4
  %snd_cwnd = getelementptr inbounds nuw i8, ptr %tp, i32 8
  %snd_cwnd6 = load i32, ptr %snd_cwnd, align 4
  %0 = tail call addrspace(1) i32 @min(i32 %snd_wnd4, i32 %snd_cwnd6)
  %binop = sdiv i32 %0, 2
  %t_maxseg = getelementptr inbounds nuw i8, ptr %tp, i32 12
  %t_maxseg8 = load i32, ptr %t_maxseg, align 4
  %binop9 = sdiv i32 %binop, %t_maxseg8
  %.binop9 = tail call i32 @llvm.smax.i32(i32 %binop9, i32 2)
  %snd_ssthresh = getelementptr inbounds nuw i8, ptr %tp, i32 16
  %binop18 = mul i32 %.binop9, %t_maxseg8
  store i32 %binop18, ptr %snd_ssthresh, align 4
  store i32 %t_maxseg8, ptr %snd_cwnd, align 4
  %1 = tail call addrspace(1) i32 @tcp_cc_resize_sndbuf(ptr nonnull %tp)
  br label %if_cont26

if_cont26:                                        ; preds = %if_then, %body
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
