; ModuleID = 'angha-ll-stm32f1/extr_evp_lib.c_EVP_MD_meth_set_result_size.ll'
source_filename = "out/extr_evp_lib.c_EVP_MD_meth_set_result_size.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"TYPE_3__:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite)
define range(i32 0, 2) i32 @EVP_MD_meth_set_result_size(ptr captures(none) %md, i32 %resultsize) local_unnamed_addr addrspace(1) #1 {
body:
  %md_size3 = load i32, ptr %md, align 4
  %cmpi.not = icmp eq i32 %md_size3, 0
  br i1 %cmpi.not, label %if_cont, label %common.ret

common.ret:                                       ; preds = %if_cont, %body
  %common.ret.op = phi i32 [ 1, %if_cont ], [ 0, %body ]
  ret i32 %common.ret.op

if_cont:                                          ; preds = %body
  store i32 %resultsize, ptr %md, align 4
  br label %common.ret
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
