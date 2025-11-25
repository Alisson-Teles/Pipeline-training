; ModuleID = 'angha-ll-stm32f1/extr_common.c_h2o_http3_num_connections.ll'
source_filename = "out/extr_common.c_h2o_http3_num_connections.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"TYPE_3__:init"(ptr writeonly captures(none) initializes((0, 8)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  %gepconns_by_id = getelementptr inbounds nuw i8, ptr %_this, i32 4
  store i32 0, ptr %gepconns_by_id, align 4
  ret void
}

declare zeroext i32 @kh_size(i32) local_unnamed_addr addrspace(1) #1

define zeroext i32 @h2o_http3_num_connections(ptr readonly captures(none) %ctx) local_unnamed_addr addrspace(1) #1 {
body:
  %conns_by_id = getelementptr inbounds nuw i8, ptr %ctx, i32 4
  %conns_by_id2 = load i32, ptr %conns_by_id, align 4
  %0 = tail call zeroext addrspace(1) i32 @kh_size(i32 %conns_by_id2)
  %conns_accepting4 = load i32, ptr %ctx, align 4
  %1 = tail call zeroext addrspace(1) i32 @kh_size(i32 %conns_accepting4)
  %binop = add i32 %1, %0
  ret i32 %binop
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
