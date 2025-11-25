; ModuleID = 'angha-ll-stm32f1/extr_userdiff.c_userdiff_find_by_name.ll'
source_filename = "out/extr_userdiff.c_userdiff_find_by_name.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

%userdiff_driver = type { i32 }

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"userdiff_driver:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @strlen(ptr, i32 zeroext) local_unnamed_addr addrspace(1) #1

declare %userdiff_driver @userdiff_find_by_namelen(ptr, i32, i32 zeroext) local_unnamed_addr addrspace(1) #1

define %userdiff_driver @userdiff_find_by_name(ptr %name, i32 zeroext %name.size) local_unnamed_addr addrspace(1) #1 {
body:
  %0 = tail call addrspace(1) i32 @strlen(ptr %name, i32 zeroext %name.size)
  %1 = tail call addrspace(1) %userdiff_driver @userdiff_find_by_namelen(ptr %name, i32 %0, i32 zeroext %name.size)
  ret %userdiff_driver %1
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
