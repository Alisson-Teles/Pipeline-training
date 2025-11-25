; ModuleID = 'angha-ll-stm32f1/extr_minilua.c_discharge2anyreg.ll'
source_filename = "out/extr_minilua.c_discharge2anyreg.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@VNONRELOC = local_unnamed_addr global i64 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"TYPE_8__:init"(ptr writeonly captures(none) initializes((0, 8)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i64 0, ptr %_this, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"TYPE_9__:init"(ptr writeonly captures(none) initializes((0, 8)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i64 0, ptr %_this, align 8
  ret void
}

declare i32 @discharge2reg(ptr, ptr, i64) local_unnamed_addr addrspace(1) #1

declare i32 @luaK_reserveregs(ptr, i32) local_unnamed_addr addrspace(1) #1

define void @discharge2anyreg(ptr %fs, ptr %e) local_unnamed_addr addrspace(1) #1 {
body:
  %k3 = load i64, ptr %e, align 8
  %VNONRELOC = load i64, ptr @VNONRELOC, align 8
  %cmpi.not = icmp eq i64 %k3, %VNONRELOC
  br i1 %cmpi.not, label %if_cont, label %if_then

if_then:                                          ; preds = %body
  %0 = tail call addrspace(1) i32 @luaK_reserveregs(ptr %fs, i32 1)
  %freereg8 = load i64, ptr %fs, align 8
  %binop = add i64 %freereg8, -1
  %1 = tail call addrspace(1) i32 @discharge2reg(ptr nonnull %fs, ptr nonnull %e, i64 %binop)
  br label %if_cont

if_cont:                                          ; preds = %if_then, %body
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
