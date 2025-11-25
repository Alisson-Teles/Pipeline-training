; ModuleID = 'angha-ll-stm32f1/extr_dir.c_need_send_readdir.ll'
source_filename = "out/extr_dir.c_need_send_readdir.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"ceph_dir_file_info:init"(ptr writeonly captures(none) initializes((0, 12)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i64 0, ptr %_this, align 8
  %geplast_readdir = getelementptr inbounds nuw i8, ptr %_this, i32 8
  store i32 0, ptr %geplast_readdir, align 4
  ret void
}

declare i32 @ceph_frag_contains_value(i64, i32) local_unnamed_addr addrspace(1) #1

declare i64 @fpos_frag(i32) local_unnamed_addr addrspace(1) #1

declare i32 @fpos_hash(i32) local_unnamed_addr addrspace(1) #1

declare i64 @is_hash_order(i32) local_unnamed_addr addrspace(1) #1

define range(i32 0, 2) i32 @need_send_readdir(ptr readonly captures(none) %dfi, i32 %pos) local_unnamed_addr addrspace(1) #1 {
body:
  %last_readdir = getelementptr inbounds nuw i8, ptr %dfi, i32 8
  %last_readdir3 = load i32, ptr %last_readdir, align 4
  %cmpi = icmp eq i32 %last_readdir3, 0
  br i1 %cmpi, label %common.ret, label %if_cont

common.ret:                                       ; preds = %if_else11, %if_then6, %body
  %common.ret.op.shrunk = phi i1 [ %cmpi10, %if_then6 ], [ %cmpi16, %if_else11 ], [ true, %body ]
  %common.ret.op = zext i1 %common.ret.op.shrunk to i32
  ret i32 %common.ret.op

if_cont:                                          ; preds = %body
  %0 = tail call addrspace(1) i64 @is_hash_order(i32 %pos)
  %cmpi5.not = icmp eq i64 %0, 0
  %frag14 = load i64, ptr %dfi, align 8
  br i1 %cmpi5.not, label %if_else11, label %if_then6

if_then6:                                         ; preds = %if_cont
  %1 = tail call addrspace(1) i32 @fpos_hash(i32 %pos)
  %2 = tail call addrspace(1) i32 @ceph_frag_contains_value(i64 %frag14, i32 %1)
  %cmpi10 = icmp eq i32 %2, 0
  br label %common.ret

if_else11:                                        ; preds = %if_cont
  %3 = tail call addrspace(1) i64 @fpos_frag(i32 %pos)
  %cmpi16 = icmp ne i64 %frag14, %3
  br label %common.ret
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
