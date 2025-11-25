; ModuleID = 'angha-ll-stm32f1/extr_container.c_container_is_scratchpad_hidden.ll'
source_filename = "out/extr_container.c_container_is_scratchpad_hidden.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"sway_container:init"(ptr writeonly captures(none) initializes((0, 4), (8, 16)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  %gepscratchpad = getelementptr inbounds nuw i8, ptr %_this, i32 8
  store i64 0, ptr %gepscratchpad, align 8
  store i32 0, ptr %_this, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read)
define range(i32 0, 2) i32 @container_is_scratchpad_hidden(ptr readonly captures(none) %con) local_unnamed_addr addrspace(1) #1 {
body:
  %scratchpad = getelementptr inbounds nuw i8, ptr %con, i32 8
  %scratchpad2 = load i64, ptr %scratchpad, align 8
  %cmpi.not = icmp eq i64 %scratchpad2, 0
  br i1 %cmpi.not, label %phiblock, label %fullev

fullev:                                           ; preds = %body
  %workspace4 = load i32, ptr %con, align 4
  %cmpi5 = icmp eq i32 %workspace4, 0
  %0 = zext i1 %cmpi5 to i32
  br label %phiblock

phiblock:                                         ; preds = %fullev, %body
  %phi = phi i32 [ 0, %body ], [ %0, %fullev ]
  ret i32 %phi
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
