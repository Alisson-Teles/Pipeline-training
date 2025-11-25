; ModuleID = 'angha-ll-stm32f1/extr_nicvf_queues.c_nicvf_xdp_sq_append_pkt.ll'
source_filename = "out/extr_nicvf_queues.c_nicvf_xdp_sq_append_pkt.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@MIN_SQ_DESC_PER_PKT_XMIT = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"snd_queue:init"(ptr writeonly captures(none) initializes((0, 8)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  %gepxdp_desc_cnt = getelementptr inbounds nuw i8, ptr %_this, i32 4
  store i32 0, ptr %gepxdp_desc_cnt, align 4
  store i32 0, ptr %_this, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"nicvf:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @nicvf_get_nxt_sqentry(ptr, i32) local_unnamed_addr addrspace(1) #1

declare i32 @nicvf_get_sq_desc(ptr, i32) local_unnamed_addr addrspace(1) #1

declare i32 @nicvf_sq_add_gather_subdesc(ptr, i32, i32, i32) local_unnamed_addr addrspace(1) #1

declare i32 @nicvf_xdp_sq_add_hdr_subdesc(ptr, i32, i32, i32, i32) local_unnamed_addr addrspace(1) #1

define range(i32 0, 2) i32 @nicvf_xdp_sq_append_pkt(ptr readnone captures(none) %nic, ptr %sq, i32 %bufaddr, i32 %dma_addr, i32 %len) local_unnamed_addr addrspace(1) #1 {
body:
  %MIN_SQ_DESC_PER_PKT_XMIT = load i32, ptr @MIN_SQ_DESC_PER_PKT_XMIT, align 4
  %xdp_free_cnt7 = load i32, ptr %sq, align 4
  %cmpi = icmp sgt i32 %MIN_SQ_DESC_PER_PKT_XMIT, %xdp_free_cnt7
  br i1 %cmpi, label %common.ret, label %if_cont

common.ret:                                       ; preds = %if_cont, %body
  %common.ret.op = phi i32 [ 1, %if_cont ], [ 0, %body ]
  ret i32 %common.ret.op

if_cont:                                          ; preds = %body
  %0 = tail call addrspace(1) i32 @nicvf_get_sq_desc(ptr nonnull %sq, i32 %MIN_SQ_DESC_PER_PKT_XMIT)
  %binop = add i32 %MIN_SQ_DESC_PER_PKT_XMIT, -1
  %1 = tail call addrspace(1) i32 @nicvf_xdp_sq_add_hdr_subdesc(ptr nonnull %sq, i32 %0, i32 %binop, i32 %bufaddr, i32 %len)
  %2 = tail call addrspace(1) i32 @nicvf_get_nxt_sqentry(ptr nonnull %sq, i32 %0)
  %3 = tail call addrspace(1) i32 @nicvf_sq_add_gather_subdesc(ptr nonnull %sq, i32 %2, i32 %len, i32 %dma_addr)
  %xdp_desc_cnt = getelementptr inbounds nuw i8, ptr %sq, i32 4
  %loadleftv = load i32, ptr %xdp_desc_cnt, align 4
  %binop23 = add i32 %loadleftv, %MIN_SQ_DESC_PER_PKT_XMIT
  store i32 %binop23, ptr %xdp_desc_cnt, align 4
  br label %common.ret
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
