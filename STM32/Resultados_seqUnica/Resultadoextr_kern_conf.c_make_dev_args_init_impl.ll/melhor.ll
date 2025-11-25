; ModuleID = 'angha-ll-stm32f1/extr_kern_conf.c_make_dev_args_init_impl.ll'
source_filename = "out/extr_kern_conf.c_make_dev_args_init_impl.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"make_dev_args:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @bzero(ptr, i32 zeroext) local_unnamed_addr addrspace(1) #1

define void @make_dev_args_init_impl(ptr %args, i32 zeroext %sz) local_unnamed_addr addrspace(1) #1 {
body:
  %0 = tail call addrspace(1) i32 @bzero(ptr %args, i32 zeroext %sz)
  store i32 %sz, ptr %args, align 4
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
