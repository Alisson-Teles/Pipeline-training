; ModuleID = 'angha-ll-stm32f1/extr_m_menu.c_M_DrawEmptyCell.ll'
source_filename = "out/extr_m_menu.c_M_DrawEmptyCell.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@LINEHEIGHT = local_unnamed_addr global i32 0
@PU_CACHE = local_unnamed_addr global i32 0
@conststr = private unnamed_addr constant [7 x i8] c"M_CELL1"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"TYPE_3__:init"(ptr writeonly captures(none) initializes((0, 16)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %_this, i8 0, i64 16, i1 false)
  ret void
}

declare i32 @V_DrawPatchDirect(i64, i64, i32, i32) local_unnamed_addr addrspace(1) #1

declare i32 @W_CacheLumpName(ptr, i32, i32 zeroext) local_unnamed_addr addrspace(1) #1

define void @M_DrawEmptyCell(ptr readonly captures(none) %menu, i32 %item) local_unnamed_addr addrspace(1) #1 {
body:
  %x = getelementptr inbounds nuw i8, ptr %menu, i32 8
  %x3 = load i64, ptr %x, align 8
  %binop = add i64 %x3, -10
  %y5 = load i64, ptr %menu, align 8
  %LINEHEIGHT = load i32, ptr @LINEHEIGHT, align 4
  %binop7 = mul i32 %LINEHEIGHT, %item
  %intcast = sext i32 %binop7 to i64
  %binop8 = add i64 %y5, -1
  %binop9 = add i64 %binop8, %intcast
  %PU_CACHE = load i32, ptr @PU_CACHE, align 4
  %0 = tail call addrspace(1) i32 @W_CacheLumpName(ptr nonnull @conststr, i32 %PU_CACHE, i32 zeroext 7)
  %1 = tail call addrspace(1) i32 @V_DrawPatchDirect(i64 %binop, i64 %binop9, i32 0, i32 %0)
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
