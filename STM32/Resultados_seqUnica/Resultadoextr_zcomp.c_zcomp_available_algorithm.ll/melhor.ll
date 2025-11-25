; ModuleID = 'angha-ll-stm32f1/extr_zcomp.c_zcomp_available_algorithm.ll'
source_filename = "out/extr_zcomp.c_zcomp_available_algorithm.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@backends = local_unnamed_addr global i32 0

declare i32 @__sysfs_match_string(i32, i32, ptr, i32 zeroext) local_unnamed_addr addrspace(1) #0

declare i32 @crypto_has_comp(ptr, i32, i32, i32 zeroext) local_unnamed_addr addrspace(1) #0

define range(i32 0, 2) i32 @zcomp_available_algorithm(ptr %comp, i32 zeroext %comp.size) local_unnamed_addr addrspace(1) #0 {
body:
  %backends = load i32, ptr @backends, align 4
  %0 = tail call addrspace(1) i32 @__sysfs_match_string(i32 %backends, i32 -1, ptr %comp, i32 zeroext %comp.size)
  %cmpi = icmp sgt i32 %0, -1
  br i1 %cmpi, label %common.ret, label %if_cont

common.ret:                                       ; preds = %if_cont, %body
  %common.ret.op = phi i32 [ %zext, %if_cont ], [ 1, %body ]
  ret i32 %common.ret.op

if_cont:                                          ; preds = %body
  %1 = tail call addrspace(1) i32 @crypto_has_comp(ptr %comp, i32 0, i32 0, i32 zeroext %comp.size)
  %cmpi8 = icmp eq i32 %1, 1
  %zext = zext i1 %cmpi8 to i32
  br label %common.ret
}

attributes #0 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
