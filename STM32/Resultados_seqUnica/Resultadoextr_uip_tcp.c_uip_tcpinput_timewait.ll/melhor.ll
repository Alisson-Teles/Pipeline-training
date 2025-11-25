; ModuleID = 'angha-ll-stm32f1/extr_uip_tcp.c_uip_tcpinput_timewait.ll'
source_filename = "out/extr_uip_tcp.c_uip_tcpinput_timewait.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@uip_seqno = local_unnamed_addr global i64 0
@uip_tcplen = local_unnamed_addr global i64 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"uip_tcp_pcb:init"(ptr writeonly captures(none) initializes((0, 8)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i64 0, ptr %_this, align 8
  ret void
}

declare i64 @UIP_TCP_SEQ_GT(i64, i64) local_unnamed_addr addrspace(1) #1

declare i32 @uip_tcp_acknow(ptr) local_unnamed_addr addrspace(1) #1

declare i32 @uip_tcpoutput(ptr) local_unnamed_addr addrspace(1) #1

define i32 @uip_tcpinput_timewait(ptr %pcb) local_unnamed_addr addrspace(1) #1 {
body:
  %uip_seqno = load i64, ptr @uip_seqno, align 8
  %uip_tcplen = load i64, ptr @uip_tcplen, align 8
  %binop = add i64 %uip_tcplen, %uip_seqno
  %rcv_nxt2 = load i64, ptr %pcb, align 8
  %0 = tail call addrspace(1) i64 @UIP_TCP_SEQ_GT(i64 %binop, i64 %rcv_nxt2)
  %cmpi.not = icmp eq i64 %0, 0
  br i1 %cmpi.not, label %if_cont, label %if_then

if_then:                                          ; preds = %body
  %uip_seqno5 = load i64, ptr @uip_seqno, align 8
  %uip_tcplen6 = load i64, ptr @uip_tcplen, align 8
  %binop7 = add i64 %uip_tcplen6, %uip_seqno5
  store i64 %binop7, ptr %pcb, align 8
  br label %if_cont

if_cont:                                          ; preds = %if_then, %body
  %uip_tcplen8 = load i64, ptr @uip_tcplen, align 8
  %cmpi9 = icmp sgt i64 %uip_tcplen8, 0
  br i1 %cmpi9, label %if_then10, label %if_cont13

if_then10:                                        ; preds = %if_cont
  %1 = tail call addrspace(1) i32 @uip_tcp_acknow(ptr nonnull %pcb)
  br label %if_cont13

if_cont13:                                        ; preds = %if_then10, %if_cont
  %2 = tail call addrspace(1) i32 @uip_tcpoutput(ptr nonnull %pcb)
  ret i32 %2
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
