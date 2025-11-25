; ModuleID = 'angha-ll-stm32f1/extr_upsdl.c_startIO.ll'
source_filename = "out/extr_upsdl.c_startIO.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@pagesize = local_unnamed_addr global i32 0
@conststr = private unnamed_addr constant [12 x i8] c"write failed"

declare i32 @perror(ptr, i32 zeroext) local_unnamed_addr addrspace(1) #0

declare i32 @write(i32, ptr, i32, i32 zeroext) local_unnamed_addr addrspace(1) #0

define range(i32 0, 2) i32 @startIO(i32 %fd, ptr %buffer, i32 zeroext %buffer.size) local_unnamed_addr addrspace(1) #0 {
body:
  %pagesize = load i32, ptr @pagesize, align 4
  %binop = shl i32 %pagesize, 1
  %0 = tail call addrspace(1) i32 @write(i32 %fd, ptr %buffer, i32 %binop, i32 zeroext %buffer.size)
  %cmpi = icmp eq i32 %0, -1
  br i1 %cmpi, label %if_then, label %common.ret

common.ret:                                       ; preds = %if_then, %body
  %common.ret.op = phi i32 [ 1, %if_then ], [ 0, %body ]
  ret i32 %common.ret.op

if_then:                                          ; preds = %body
  %1 = tail call addrspace(1) i32 @perror(ptr nonnull @conststr, i32 zeroext 12)
  br label %common.ret
}

attributes #0 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
