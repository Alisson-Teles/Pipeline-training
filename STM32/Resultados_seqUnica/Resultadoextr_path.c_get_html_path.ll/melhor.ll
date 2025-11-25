; ModuleID = 'angha-ll-stm32f1/extr_path.c_get_html_path.ll'
source_filename = "out/extr_path.c_get_html_path.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@HTMLDIR = local_unnamed_addr global i32 0
@PGBINDIR = local_unnamed_addr global i32 0

declare i32 @make_relative_path(ptr, i32, i32, ptr, i32 zeroext, i32 zeroext) local_unnamed_addr addrspace(1) #0

define void @get_html_path(ptr %my_exec_path, ptr %ret_path, i32 zeroext %my_exec_path.size, i32 zeroext %ret_path.size) local_unnamed_addr addrspace(1) #0 {
body:
  %HTMLDIR = load i32, ptr @HTMLDIR, align 4
  %PGBINDIR = load i32, ptr @PGBINDIR, align 4
  %0 = tail call addrspace(1) i32 @make_relative_path(ptr %ret_path, i32 %HTMLDIR, i32 %PGBINDIR, ptr %my_exec_path, i32 zeroext %ret_path.size, i32 zeroext %my_exec_path.size)
  ret void
}

attributes #0 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
