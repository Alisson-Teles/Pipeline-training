; ModuleID = 'angha-ll-stm32f1/extr_hda_generic.c___init_extra_out.ll'
source_filename = "out/extr_hda_generic.c___init_extra_out.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"hda_codec:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @set_output_and_unmute(ptr, i32) local_unnamed_addr addrspace(1) #1

define void @__init_extra_out(ptr %codec, i32 %num_outs, ptr readonly captures(none) %paths, i32 zeroext %paths.size) local_unnamed_addr addrspace(1) #1 {
body:
  %cmpi10 = icmp sgt i32 %num_outs, 0
  br i1 %cmpi10, label %while_body, label %while_end

while_body:                                       ; preds = %while_body, %body
  %i.011 = phi i32 [ %binop, %while_body ], [ 0, %body ]
  %elemgep = getelementptr [0 x i32], ptr %paths, i32 0, i32 %i.011
  %deref9 = load i32, ptr %elemgep, align 4
  %0 = tail call addrspace(1) i32 @set_output_and_unmute(ptr %codec, i32 %deref9)
  %binop = add nuw nsw i32 %i.011, 1
  %exitcond.not = icmp eq i32 %binop, %num_outs
  br i1 %exitcond.not, label %while_end, label %while_body

while_end:                                        ; preds = %while_body, %body
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
