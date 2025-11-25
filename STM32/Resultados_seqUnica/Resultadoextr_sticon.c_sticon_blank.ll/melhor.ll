; ModuleID = 'angha-ll-stm32f1/extr_sticon.c_sticon_blank.ll'
source_filename = "out/extr_sticon.c_sticon_blank.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@BLANK = local_unnamed_addr global i32 0
@sticon_sti = local_unnamed_addr global i32 0
@vga_is_gfx = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"vc_data:init"(ptr writeonly captures(none) initializes((0, 8)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  %gepvc_rows = getelementptr inbounds nuw i8, ptr %_this, i32 4
  store i32 0, ptr %gepvc_rows, align 4
  ret void
}

declare i32 @sti_clear(i32, i32, i32, i32, i32, i32) local_unnamed_addr addrspace(1) #1

declare i32 @sticon_set_origin(ptr) local_unnamed_addr addrspace(1) #1

define noundef i32 @sticon_blank(ptr %c, i32 %blank, i32 %mode_switch) local_unnamed_addr addrspace(1) #1 {
body:
  %cmpi = icmp eq i32 %blank, 0
  br i1 %cmpi, label %if_then, label %if_cont9

if_then:                                          ; preds = %body
  %cmpi6.not = icmp eq i32 %mode_switch, 0
  br i1 %cmpi6.not, label %common.ret, label %common.ret.sink.split

common.ret.sink.split:                            ; preds = %if_cont9, %if_then
  %.sink = phi i32 [ 1, %if_cont9 ], [ 0, %if_then ]
  store i32 %.sink, ptr @vga_is_gfx, align 4
  br label %common.ret

common.ret:                                       ; preds = %if_cont9, %common.ret.sink.split, %if_then
  ret i32 1

if_cont9:                                         ; preds = %body
  %0 = tail call addrspace(1) i32 @sticon_set_origin(ptr %c)
  %sticon_sti = load i32, ptr @sticon_sti, align 4
  %vc_rows = getelementptr inbounds nuw i8, ptr %c, i32 4
  %vc_rows11 = load i32, ptr %vc_rows, align 4
  %vc_cols13 = load i32, ptr %c, align 4
  %BLANK = load i32, ptr @BLANK, align 4
  %1 = tail call addrspace(1) i32 @sti_clear(i32 %sticon_sti, i32 0, i32 0, i32 %vc_rows11, i32 %vc_cols13, i32 %BLANK)
  %cmpi15.not = icmp eq i32 %mode_switch, 0
  br i1 %cmpi15.not, label %common.ret, label %common.ret.sink.split
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
