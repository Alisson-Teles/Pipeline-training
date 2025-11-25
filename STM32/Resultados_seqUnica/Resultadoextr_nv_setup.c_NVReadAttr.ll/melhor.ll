; ModuleID = 'angha-ll-stm32f1/extr_nv_setup.c_NVReadAttr.ll'
source_filename = "out/extr_nv_setup.c_NVReadAttr.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@VGA_ATT_IW = local_unnamed_addr global i32 0
@VGA_ATT_R = local_unnamed_addr global i64 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"nvidia_par:init"(ptr writeonly captures(none) initializes((0, 4), (8, 24)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  %geppaletteEnabled = getelementptr inbounds nuw i8, ptr %_this, i32 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %geppaletteEnabled, i8 0, i64 16, i1 false)
  ret void
}

declare i32 @VGA_RD08(i32, i64) local_unnamed_addr addrspace(1) #1

declare i32 @VGA_WR08(i32, i32, i32) local_unnamed_addr addrspace(1) #1

define i32 @NVReadAttr(ptr readonly captures(none) %par, i32 %index) local_unnamed_addr addrspace(1) #1 {
body:
  %PCIO3 = load i32, ptr %par, align 4
  %IOBase = getelementptr inbounds nuw i8, ptr %par, i32 16
  %IOBase5 = load i64, ptr %IOBase, align 8
  %binop = add i64 %IOBase5, 10
  %0 = tail call addrspace(1) i32 @VGA_RD08(i32 %PCIO3, i64 %binop)
  %paletteEnabled = getelementptr inbounds nuw i8, ptr %par, i32 8
  %paletteEnabled7 = load i64, ptr %paletteEnabled, align 8
  %cmpi.not = icmp eq i64 %paletteEnabled7, 0
  %binop8 = and i32 %index, -33
  %masksel = select i1 %cmpi.not, i32 32, i32 0
  %index2.0 = or disjoint i32 %masksel, %binop8
  %PCIO13 = load i32, ptr %par, align 4
  %VGA_ATT_IW = load i32, ptr @VGA_ATT_IW, align 4
  %1 = tail call addrspace(1) i32 @VGA_WR08(i32 %PCIO13, i32 %VGA_ATT_IW, i32 %index2.0)
  %PCIO17 = load i32, ptr %par, align 4
  %VGA_ATT_R = load i64, ptr @VGA_ATT_R, align 8
  %2 = tail call addrspace(1) i32 @VGA_RD08(i32 %PCIO17, i64 %VGA_ATT_R)
  ret i32 %2
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
