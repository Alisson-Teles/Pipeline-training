; ModuleID = 'angha-ll-stm32f1/extr_prereleasestb_lib.h_stb__from_utf8.ll'
source_filename = "out/extr_prereleasestb_lib.h_stb__from_utf8.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

declare i32 @stb_from_utf8(ptr, ptr, i32, i32 zeroext, i32 zeroext) local_unnamed_addr addrspace(1) #0

define i32 @stb__from_utf8(ptr %str, i32 zeroext %str.size) local_unnamed_addr addrspace(1) #0 {
body:
  %buffer = alloca [4096 x i32], align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16384) %buffer, i8 0, i64 16384, i1 false)
  %0 = call addrspace(1) i32 @stb_from_utf8(ptr nonnull %buffer, ptr %str, i32 4096, i32 zeroext 4096, i32 zeroext %str.size)
  ret i32 %0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

attributes #0 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
