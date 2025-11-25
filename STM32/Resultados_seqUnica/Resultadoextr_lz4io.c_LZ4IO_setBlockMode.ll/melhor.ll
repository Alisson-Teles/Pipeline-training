; ModuleID = 'angha-ll-stm32f1/extr_lz4io.c_LZ4IO_setBlockMode.ll'
source_filename = "out/extr_lz4io.c_LZ4IO_setBlockMode.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@LZ4IO_blockIndependent = local_unnamed_addr global i64 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"TYPE_3__:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none)
define range(i32 0, 2) i32 @LZ4IO_setBlockMode(ptr writeonly captures(none) initializes((0, 4)) %prefs, i64 %blockMode) local_unnamed_addr addrspace(1) #1 {
body:
  %LZ4IO_blockIndependent = load i64, ptr @LZ4IO_blockIndependent, align 8
  %cmpi = icmp eq i64 %blockMode, %LZ4IO_blockIndependent
  %zext = zext i1 %cmpi to i32
  store i32 %zext, ptr %prefs, align 4
  ret i32 %zext
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
