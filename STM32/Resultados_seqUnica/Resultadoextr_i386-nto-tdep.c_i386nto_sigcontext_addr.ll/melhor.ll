; ModuleID = 'angha-ll-stm32f1/extr_i386-nto-tdep.c_i386nto_sigcontext_addr.ll'
source_filename = "out/extr_i386-nto-tdep.c_i386nto_sigcontext_addr.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@I386_NTO_SIGCONTEXT_OFFSET = local_unnamed_addr global i64 0
@SP_REGNUM = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"frame_info:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i64 @extract_unsigned_integer(ptr, i32, i32 zeroext) local_unnamed_addr addrspace(1) #1

declare i32 @frame_unwind_register(ptr, i32, ptr, i32 zeroext) local_unnamed_addr addrspace(1) #1

define i64 @i386nto_sigcontext_addr(ptr %next_frame) local_unnamed_addr addrspace(1) #1 {
body:
  %buf = alloca [4 x i8], align 4
  store i32 0, ptr %buf, align 4
  %SP_REGNUM = load i32, ptr @SP_REGNUM, align 4
  %0 = call addrspace(1) i32 @frame_unwind_register(ptr %next_frame, i32 %SP_REGNUM, ptr nonnull %buf, i32 zeroext 4)
  %1 = call addrspace(1) i64 @extract_unsigned_integer(ptr nonnull %buf, i32 4, i32 zeroext 4)
  %I386_NTO_SIGCONTEXT_OFFSET = load i64, ptr @I386_NTO_SIGCONTEXT_OFFSET, align 8
  %binop = add i64 %I386_NTO_SIGCONTEXT_OFFSET, %1
  ret i64 %binop
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
