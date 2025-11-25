; ModuleID = 'angha-ll-stm32f1/extr_lstate.c_luaE_setdebt.ll'
source_filename = "out/extr_lstate.c_luaE_setdebt.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@MAX_LMEM = local_unnamed_addr global i64 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"TYPE_4__:init"(ptr writeonly captures(none) initializes((0, 16)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %_this, i8 0, i64 16, i1 false)
  ret void
}

declare i64 @gettotalbytes(ptr) local_unnamed_addr addrspace(1) #1

declare i32 @lua_assert(i32) local_unnamed_addr addrspace(1) #1

define void @luaE_setdebt(ptr %g, i64 %debt) local_unnamed_addr addrspace(1) #1 {
body:
  %0 = tail call addrspace(1) i64 @gettotalbytes(ptr %g)
  %cmpi = icmp sgt i64 %0, 0
  %zext = zext i1 %cmpi to i32
  %1 = tail call addrspace(1) i32 @lua_assert(i32 %zext)
  %MAX_LMEM = load i64, ptr @MAX_LMEM, align 8
  %binop = sub i64 %0, %MAX_LMEM
  %debt2.0 = tail call i64 @llvm.smax.i64(i64 %debt, i64 %binop)
  %totalbytes = getelementptr inbounds nuw i8, ptr %g, i32 8
  %binop13 = sub i64 %0, %debt2.0
  store i64 %binop13, ptr %totalbytes, align 8
  store i64 %debt2.0, ptr %g, align 8
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
