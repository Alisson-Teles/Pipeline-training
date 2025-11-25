; ModuleID = 'angha-ll-stm32f1/extr_wlanwds.c_usage.ll'
source_filename = "out/extr_wlanwds.c_usage.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@stderr = local_unnamed_addr global i32 0
@conststr = private unnamed_addr constant [73 x i8] c"usage: %s [-efjtv] [-P pidfile] [-s <set_scriptname>] [ifnet0 ... | any]\0A"

declare i32 @exit(i32) local_unnamed_addr addrspace(1) #0

declare i32 @fprintf(i32, ptr, ptr, i32 zeroext, i32 zeroext) local_unnamed_addr addrspace(1) #0

define void @usage(ptr %progname, i32 zeroext %progname.size) local_unnamed_addr addrspace(1) #0 {
body:
  %stderr = load i32, ptr @stderr, align 4
  %0 = tail call addrspace(1) i32 @fprintf(i32 %stderr, ptr nonnull @conststr, ptr %progname, i32 zeroext 73, i32 zeroext %progname.size)
  %1 = tail call addrspace(1) i32 @exit(i32 -1)
  ret void
}

attributes #0 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
