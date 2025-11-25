; ModuleID = 'angha-ll-stm32f1/extr_synclink_gt.c_free_dma_bufs.ll'
source_filename = "out/extr_synclink_gt.c_free_dma_bufs.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"slgt_info:init"(ptr writeonly captures(none) initializes((0, 24)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %_this, i8 0, i64 24, i1 false)
  ret void
}

declare i32 @free_bufs(ptr, i32, i32) local_unnamed_addr addrspace(1) #1

declare i32 @free_desc(ptr) local_unnamed_addr addrspace(1) #1

declare i32 @free_tmp_rbuf(ptr) local_unnamed_addr addrspace(1) #1

define void @free_dma_bufs(ptr %info) local_unnamed_addr addrspace(1) #1 {
body:
  %bufs = getelementptr inbounds nuw i8, ptr %info, i32 16
  %bufs2 = load i64, ptr %bufs, align 8
  %cmpi.not = icmp eq i64 %bufs2, 0
  br i1 %cmpi.not, label %if_cont, label %if_then

if_then:                                          ; preds = %body
  %rbufs = getelementptr inbounds nuw i8, ptr %info, i32 12
  %rbufs5 = load i32, ptr %rbufs, align 4
  %rbuf_count = getelementptr inbounds nuw i8, ptr %info, i32 8
  %rbuf_count7 = load i32, ptr %rbuf_count, align 4
  %0 = tail call addrspace(1) i32 @free_bufs(ptr %info, i32 %rbufs5, i32 %rbuf_count7)
  %tbufs = getelementptr inbounds nuw i8, ptr %info, i32 4
  %tbufs10 = load i32, ptr %tbufs, align 4
  %tbuf_count12 = load i32, ptr %info, align 4
  %1 = tail call addrspace(1) i32 @free_bufs(ptr nonnull %info, i32 %tbufs10, i32 %tbuf_count12)
  %2 = tail call addrspace(1) i32 @free_desc(ptr nonnull %info)
  br label %if_cont

if_cont:                                          ; preds = %if_then, %body
  %3 = tail call addrspace(1) i32 @free_tmp_rbuf(ptr %info)
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
