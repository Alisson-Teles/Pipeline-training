; ModuleID = 'angha-ll-stm32f1/extr_open.c_stream_open.ll'
source_filename = "out/extr_open.c_stream_open.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@FMODE_ATOMIC_POS = local_unnamed_addr global i32 0
@FMODE_LSEEK = local_unnamed_addr global i32 0
@FMODE_PREAD = local_unnamed_addr global i32 0
@FMODE_PWRITE = local_unnamed_addr global i32 0
@FMODE_STREAM = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"inode:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"file:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none)
define noundef i32 @stream_open(ptr readnone captures(none) %inode, ptr captures(none) %filp) local_unnamed_addr addrspace(1) #1 {
body:
  %loadleftv = load i32, ptr %filp, align 4
  %FMODE_LSEEK = load i32, ptr @FMODE_LSEEK, align 4
  %FMODE_PREAD = load i32, ptr @FMODE_PREAD, align 4
  %binop = or i32 %FMODE_PREAD, %FMODE_LSEEK
  %FMODE_PWRITE = load i32, ptr @FMODE_PWRITE, align 4
  %binop3 = or i32 %binop, %FMODE_PWRITE
  %FMODE_ATOMIC_POS = load i32, ptr @FMODE_ATOMIC_POS, align 4
  %binop4 = or i32 %binop3, %FMODE_ATOMIC_POS
  %neg = xor i32 %binop4, -1
  %binop5 = and i32 %loadleftv, %neg
  store i32 %binop5, ptr %filp, align 4
  %FMODE_STREAM = load i32, ptr @FMODE_STREAM, align 4
  %binop9 = or i32 %binop5, %FMODE_STREAM
  store i32 %binop9, ptr %filp, align 4
  ret i32 0
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
