; ModuleID = 'angha-ll-stm32f1/extr_curve25519.c_ge_msub.ll'
source_filename = "out/extr_curve25519.c_ge_msub.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"TYPE_7__:init"(ptr writeonly captures(none) initializes((0, 12)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  %gepyminusx = getelementptr inbounds nuw i8, ptr %_this, i32 8
  store i32 0, ptr %gepyminusx, align 4
  %gepyplusx = getelementptr inbounds nuw i8, ptr %_this, i32 4
  store i32 0, ptr %gepyplusx, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"TYPE_8__:init"(ptr writeonly captures(none) initializes((0, 16)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %_this, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"TYPE_9__:init"(ptr writeonly captures(none) initializes((0, 16)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %_this, i8 0, i64 16, i1 false)
  ret void
}

declare i32 @fe_add(i32, i32, i32) local_unnamed_addr addrspace(1) #1

declare i32 @fe_mul(i32, i32, i32) local_unnamed_addr addrspace(1) #1

declare i32 @fe_sub(i32, i32, i32) local_unnamed_addr addrspace(1) #1

define void @ge_msub(ptr readonly captures(none) %r, ptr readonly captures(none) %p, ptr readonly captures(none) %q) local_unnamed_addr addrspace(1) #1 {
body:
  %X = getelementptr inbounds nuw i8, ptr %r, i32 12
  %X4 = load i32, ptr %X, align 4
  %Y = getelementptr inbounds nuw i8, ptr %p, i32 12
  %Y6 = load i32, ptr %Y, align 4
  %X8 = getelementptr inbounds nuw i8, ptr %p, i32 8
  %X9 = load i32, ptr %X8, align 4
  %0 = tail call addrspace(1) i32 @fe_add(i32 %X4, i32 %Y6, i32 %X9)
  %Y11 = getelementptr inbounds nuw i8, ptr %r, i32 8
  %Y12 = load i32, ptr %Y11, align 4
  %Y15 = load i32, ptr %Y, align 4
  %X18 = load i32, ptr %X8, align 4
  %1 = tail call addrspace(1) i32 @fe_sub(i32 %Y12, i32 %Y15, i32 %X18)
  %Z = getelementptr inbounds nuw i8, ptr %r, i32 4
  %Z20 = load i32, ptr %Z, align 4
  %X23 = load i32, ptr %X, align 4
  %yminusx = getelementptr inbounds nuw i8, ptr %q, i32 8
  %yminusx25 = load i32, ptr %yminusx, align 4
  %2 = tail call addrspace(1) i32 @fe_mul(i32 %Z20, i32 %X23, i32 %yminusx25)
  %Y28 = load i32, ptr %Y11, align 4
  %yplusx = getelementptr inbounds nuw i8, ptr %q, i32 4
  %yplusx33 = load i32, ptr %yplusx, align 4
  %3 = tail call addrspace(1) i32 @fe_mul(i32 %Y28, i32 %Y28, i32 %yplusx33)
  %T35 = load i32, ptr %r, align 4
  %xy2d37 = load i32, ptr %q, align 4
  %T39 = getelementptr inbounds nuw i8, ptr %p, i32 4
  %T40 = load i32, ptr %T39, align 4
  %4 = tail call addrspace(1) i32 @fe_mul(i32 %T35, i32 %xy2d37, i32 %T40)
  %Z44 = load i32, ptr %p, align 4
  %5 = tail call addrspace(1) i32 @fe_add(i32 0, i32 %Z44, i32 %Z44)
  %X50 = load i32, ptr %X, align 4
  %Z53 = load i32, ptr %Z, align 4
  %Y56 = load i32, ptr %Y11, align 4
  %6 = tail call addrspace(1) i32 @fe_sub(i32 %X50, i32 %Z53, i32 %Y56)
  %Y59 = load i32, ptr %Y11, align 4
  %Z62 = load i32, ptr %Z, align 4
  %7 = tail call addrspace(1) i32 @fe_add(i32 %Y59, i32 %Z62, i32 %Y59)
  %Z68 = load i32, ptr %Z, align 4
  %T72 = load i32, ptr %r, align 4
  %8 = tail call addrspace(1) i32 @fe_sub(i32 %Z68, i32 0, i32 %T72)
  %T75 = load i32, ptr %r, align 4
  %9 = tail call addrspace(1) i32 @fe_add(i32 %T75, i32 0, i32 %T75)
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
