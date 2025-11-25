; ModuleID = 'angha-ll-stm32f1/extr_debug.c__NgDebugSockaddr.ll'
source_filename = "out/extr_debug.c__NgDebugSockaddr.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@conststr = private unnamed_addr constant [37 x i8] c"SOCKADDR: { fam=%d len=%d addr=\22%s\22 }"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"sockaddr_ng:init"(ptr writeonly captures(none) initializes((0, 12)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  %gepsg_family = getelementptr inbounds nuw i8, ptr %_this, i32 8
  store i32 0, ptr %gepsg_family, align 4
  %gepsg_len = getelementptr inbounds nuw i8, ptr %_this, i32 4
  store i32 0, ptr %gepsg_len, align 4
  ret void
}

declare i32 @NGLOGX(ptr, i32, i32, i32, i32 zeroext) local_unnamed_addr addrspace(1) #1

define void @_NgDebugSockaddr(ptr readonly captures(none) %sg) local_unnamed_addr addrspace(1) #1 {
body:
  %sg_family = getelementptr inbounds nuw i8, ptr %sg, i32 8
  %sg_family2 = load i32, ptr %sg_family, align 4
  %sg_len = getelementptr inbounds nuw i8, ptr %sg, i32 4
  %sg_len4 = load i32, ptr %sg_len, align 4
  %sg_data6 = load i32, ptr %sg, align 4
  %0 = tail call addrspace(1) i32 @NGLOGX(ptr nonnull @conststr, i32 %sg_family2, i32 %sg_len4, i32 %sg_data6, i32 zeroext 37)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
