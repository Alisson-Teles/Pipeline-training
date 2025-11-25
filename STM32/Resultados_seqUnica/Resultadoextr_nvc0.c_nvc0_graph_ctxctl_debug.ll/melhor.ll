; ModuleID = 'angha-ll-stm32f1/extr_nvc0.c_nvc0_graph_ctxctl_debug.ll'
source_filename = "out/extr_nvc0.c_nvc0_graph_ctxctl_debug.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"nvc0_graph_priv:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @nv_rd32(ptr, i32) local_unnamed_addr addrspace(1) #1

declare i32 @nvc0_graph_ctxctl_debug_unit(ptr, i32) local_unnamed_addr addrspace(1) #1

define void @nvc0_graph_ctxctl_debug(ptr %priv) local_unnamed_addr addrspace(1) #1 {
body:
  %0 = tail call addrspace(1) i32 @nv_rd32(ptr %priv, i32 4232708)
  %binop = and i32 %0, 65535
  %1 = tail call addrspace(1) i32 @nvc0_graph_ctxctl_debug_unit(ptr %priv, i32 4231168)
  %cmpi10.not = icmp eq i32 %binop, 0
  br i1 %cmpi10.not, label %while_end, label %while_body

while_body:                                       ; preds = %while_body, %body
  %gpc.011 = phi i32 [ %binop9, %while_body ], [ 0, %body ]
  %binop7 = shl i32 %gpc.011, 15
  %binop8 = add nuw i32 %binop7, 5251072
  %2 = tail call addrspace(1) i32 @nvc0_graph_ctxctl_debug_unit(ptr %priv, i32 %binop8)
  %binop9 = add nuw nsw i32 %gpc.011, 1
  %exitcond.not = icmp eq i32 %binop9, %binop
  br i1 %exitcond.not, label %while_end, label %while_body

while_end:                                        ; preds = %while_body, %body
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
