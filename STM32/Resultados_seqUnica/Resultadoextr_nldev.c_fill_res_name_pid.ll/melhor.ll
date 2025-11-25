; ModuleID = 'angha-ll-stm32f1/extr_nldev.c_fill_res_name_pid.ll'
source_filename = "out/extr_nldev.c_fill_res_name_pid.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@EMSGSIZE = local_unnamed_addr global i32 0
@RDMA_NLDEV_ATTR_RES_KERN_NAME = local_unnamed_addr global i32 0
@RDMA_NLDEV_ATTR_RES_PID = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"sk_buff:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"rdma_restrack_entry:init"(ptr writeonly captures(none) initializes((0, 8)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  %gepkern_name = getelementptr inbounds nuw i8, ptr %_this, i32 4
  store i32 0, ptr %gepkern_name, align 4
  store i32 0, ptr %_this, align 4
  ret void
}

declare i64 @nla_put_string(ptr, i32, i32) local_unnamed_addr addrspace(1) #1

declare i64 @nla_put_u32(ptr, i32, i32) local_unnamed_addr addrspace(1) #1

declare i64 @rdma_is_kernel_res(ptr) local_unnamed_addr addrspace(1) #1

declare i32 @task_pid_vnr(i32) local_unnamed_addr addrspace(1) #1

define i32 @fill_res_name_pid(ptr %msg, ptr %res) local_unnamed_addr addrspace(1) #1 {
body:
  %0 = tail call addrspace(1) i64 @rdma_is_kernel_res(ptr %res)
  %cmpi.not = icmp eq i64 %0, 0
  br i1 %cmpi.not, label %if_else8, label %if_then

if_then:                                          ; preds = %body
  %RDMA_NLDEV_ATTR_RES_KERN_NAME = load i32, ptr @RDMA_NLDEV_ATTR_RES_KERN_NAME, align 4
  %kern_name = getelementptr inbounds nuw i8, ptr %res, i32 4
  %kern_name5 = load i32, ptr %kern_name, align 4
  %1 = tail call addrspace(1) i64 @nla_put_string(ptr %msg, i32 %RDMA_NLDEV_ATTR_RES_KERN_NAME, i32 %kern_name5)
  %cmpi6.not = icmp eq i64 %1, 0
  br i1 %cmpi6.not, label %common.ret, label %if_then7

common.ret:                                       ; preds = %if_then13, %if_else8, %if_then7, %if_then
  %common.ret.op = phi i32 [ %binop, %if_then7 ], [ %binop15, %if_then13 ], [ 0, %if_else8 ], [ 0, %if_then ]
  ret i32 %common.ret.op

if_then7:                                         ; preds = %if_then
  %EMSGSIZE = load i32, ptr @EMSGSIZE, align 4
  %binop = sub i32 0, %EMSGSIZE
  br label %common.ret

if_else8:                                         ; preds = %body
  %RDMA_NLDEV_ATTR_RES_PID = load i32, ptr @RDMA_NLDEV_ATTR_RES_PID, align 4
  %task11 = load i32, ptr %res, align 4
  %2 = tail call addrspace(1) i32 @task_pid_vnr(i32 %task11)
  %3 = tail call addrspace(1) i64 @nla_put_u32(ptr %msg, i32 %RDMA_NLDEV_ATTR_RES_PID, i32 %2)
  %cmpi12.not = icmp eq i64 %3, 0
  br i1 %cmpi12.not, label %common.ret, label %if_then13

if_then13:                                        ; preds = %if_else8
  %EMSGSIZE14 = load i32, ptr @EMSGSIZE, align 4
  %binop15 = sub i32 0, %EMSGSIZE14
  br label %common.ret
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
