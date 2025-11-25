; ModuleID = 'angha-ll-stm32f1/extr_en_tx.c_mlx5e_skb_l3_header_offset.ll'
source_filename = "out/extr_en_tx.c_mlx5e_skb_l3_header_offset.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"sk_buff:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @mlx5e_skb_l2_header_offset(ptr) local_unnamed_addr addrspace(1) #1

declare i64 @skb_transport_header_was_set(ptr) local_unnamed_addr addrspace(1) #1

declare i32 @skb_transport_offset(ptr) local_unnamed_addr addrspace(1) #1

define i32 @mlx5e_skb_l3_header_offset(ptr %skb) local_unnamed_addr addrspace(1) #1 {
body:
  %0 = tail call addrspace(1) i64 @skb_transport_header_was_set(ptr %skb)
  %cmpi.not = icmp eq i64 %0, 0
  br i1 %cmpi.not, label %if_else, label %if_then

common.ret:                                       ; preds = %if_else, %if_then
  %common.ret.op = phi i32 [ %1, %if_then ], [ %2, %if_else ]
  ret i32 %common.ret.op

if_then:                                          ; preds = %body
  %1 = tail call addrspace(1) i32 @skb_transport_offset(ptr %skb)
  br label %common.ret

if_else:                                          ; preds = %body
  %2 = tail call addrspace(1) i32 @mlx5e_skb_l2_header_offset(ptr %skb)
  br label %common.ret
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
