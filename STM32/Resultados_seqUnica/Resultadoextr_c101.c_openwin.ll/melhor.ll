; ModuleID = 'angha-ll-stm32f1/extr_c101.c_openwin.ll'
source_filename = "out/extr_c101.c_openwin.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@C101_PAGE = local_unnamed_addr global i64 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"TYPE_3__:init"(ptr writeonly captures(none) initializes((0, 12)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  %geppage = getelementptr inbounds nuw i8, ptr %_this, i32 8
  store i32 0, ptr %geppage, align 4
  store i64 0, ptr %_this, align 8
  ret void
}

declare i32 @writeb(i32, i64) local_unnamed_addr addrspace(1) #1

define void @openwin(ptr captures(none) initializes((8, 12)) %card, i32 %page) local_unnamed_addr addrspace(1) #1 {
body:
  %page3 = getelementptr inbounds nuw i8, ptr %card, i32 8
  store i32 %page, ptr %page3, align 4
  %win0base7 = load i64, ptr %card, align 8
  %C101_PAGE = load i64, ptr @C101_PAGE, align 8
  %binop = add i64 %C101_PAGE, %win0base7
  %0 = tail call addrspace(1) i32 @writeb(i32 %page, i64 %binop)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
