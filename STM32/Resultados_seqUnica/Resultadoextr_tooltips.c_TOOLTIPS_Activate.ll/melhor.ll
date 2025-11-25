; ModuleID = 'angha-ll-stm32f1/extr_tooltips.c_TOOLTIPS_Activate.ll'
source_filename = "out/extr_tooltips.c_TOOLTIPS_Activate.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@conststr = private unnamed_addr constant [12 x i8] c"activate %d\0A"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"TYPE_4__:init"(ptr nocapture nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(8) initializes((0, 8)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  %gepbActive = getelementptr inbounds nuw i8, ptr %_this, i32 4
  store i32 0, ptr %gepbActive, align 4
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @TOOLTIPS_Hide(ptr) local_unnamed_addr addrspace(1) #1

declare i32 @TRACE(ptr, i32, i32 zeroext) local_unnamed_addr addrspace(1) #1

define noundef i32 @TOOLTIPS_Activate(ptr nonnull align 4 dereferenceable(8) initializes((4, 8)) %infoPtr, i32 %activate) local_unnamed_addr addrspace(1) #1 {
body:
  %bActive = getelementptr inbounds nuw i8, ptr %infoPtr, i32 4
  store i32 %activate, ptr %bActive, align 4
  %0 = tail call addrspace(1) i32 @TRACE(ptr noundef nonnull @conststr, i32 %activate, i32 noundef zeroext 12)
  %bActive7 = load i32, ptr %bActive, align 4
  %cmpi = icmp ne i32 %bActive7, 0
  %nCurrentTool9 = load i32, ptr %infoPtr, align 4
  %cmpi10.not = icmp eq i32 %nCurrentTool9, -1
  %or.cond = select i1 %cmpi, i1 true, i1 %cmpi10.not
  br i1 %or.cond, label %if_cont, label %if_then

if_then:                                          ; preds = %body
  %1 = tail call addrspace(1) i32 @TOOLTIPS_Hide(ptr noundef nonnull %infoPtr)
  br label %if_cont

if_cont:                                          ; preds = %if_then, %body
  ret i32 0
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
