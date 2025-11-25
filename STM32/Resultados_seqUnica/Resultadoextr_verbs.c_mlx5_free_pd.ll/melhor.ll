; ModuleID = 'angha-ll-stm32f1/extr_verbs.c_mlx5_free_pd.ll'
source_filename = "out/extr_verbs.c_mlx5_free_pd.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"ibv_pd:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @free(i32) local_unnamed_addr addrspace(1) #1

declare i32 @ibv_cmd_dealloc_pd(ptr) local_unnamed_addr addrspace(1) #1

declare i32 @to_mpd(ptr) local_unnamed_addr addrspace(1) #1

define i32 @mlx5_free_pd(ptr %pd) local_unnamed_addr addrspace(1) #1 {
body:
  %0 = tail call addrspace(1) i32 @ibv_cmd_dealloc_pd(ptr %pd)
  %cmpi.not = icmp eq i32 %0, 0
  br i1 %cmpi.not, label %if_cont, label %common.ret

common.ret:                                       ; preds = %if_cont, %body
  %common.ret.op = phi i32 [ 0, %if_cont ], [ %0, %body ]
  ret i32 %common.ret.op

if_cont:                                          ; preds = %body
  %1 = tail call addrspace(1) i32 @to_mpd(ptr %pd)
  %2 = tail call addrspace(1) i32 @free(i32 %1)
  br label %common.ret
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
