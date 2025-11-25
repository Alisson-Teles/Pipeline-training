; ModuleID = 'angha-ll-stm32f1/extr_futils.c_git_futils_creat_locked_withpath.ll'
source_filename = "out/extr_futils.c_git_futils_creat_locked_withpath.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

declare i32 @git_futils_creat_locked(ptr, i32, i32 zeroext) local_unnamed_addr addrspace(1) #0

declare i64 @git_futils_mkpath2file(ptr, i32, i32 zeroext) local_unnamed_addr addrspace(1) #0

define i32 @git_futils_creat_locked_withpath(ptr %path, i32 %dirmode, i32 %mode, i32 zeroext %path.size) local_unnamed_addr addrspace(1) #0 {
body:
  %0 = tail call addrspace(1) i64 @git_futils_mkpath2file(ptr %path, i32 %dirmode, i32 zeroext %path.size)
  %cmpi = icmp slt i64 %0, 0
  br i1 %cmpi, label %common.ret, label %if_cont

common.ret:                                       ; preds = %if_cont, %body
  %common.ret.op = phi i32 [ %1, %if_cont ], [ -1, %body ]
  ret i32 %common.ret.op

if_cont:                                          ; preds = %body
  %1 = tail call addrspace(1) i32 @git_futils_creat_locked(ptr %path, i32 %mode, i32 zeroext %path.size)
  br label %common.ret
}

attributes #0 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
