; ModuleID = 'angha-ll-stm32f1/extr_ps2_gfx.c_refreshScreen.ll'
source_filename = "out/extr_ps2_gfx.c_refreshScreen.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"TYPE_3__:init"(ptr writeonly captures(none) initializes((0, 16)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %_this, i8 0, i64 16, i1 false)
  ret void
}

declare i32 @gsKit_queue_exec(i32) local_unnamed_addr addrspace(1) #1

declare i32 @gsKit_sync_flip(i32) local_unnamed_addr addrspace(1) #1

define void @refreshScreen(ptr captures(none) initializes((0, 4)) %ps2) local_unnamed_addr addrspace(1) #1 {
body:
  %vsync = getelementptr inbounds nuw i8, ptr %ps2, i32 8
  %vsync2 = load i64, ptr %vsync, align 8
  %cmpi.not = icmp eq i64 %vsync2, 0
  br i1 %cmpi.not, label %if_cont, label %if_then

if_then:                                          ; preds = %body
  %gsGlobal = getelementptr inbounds nuw i8, ptr %ps2, i32 4
  %gsGlobal4 = load i32, ptr %gsGlobal, align 4
  %0 = tail call addrspace(1) i32 @gsKit_sync_flip(i32 %gsGlobal4)
  br label %if_cont

if_cont:                                          ; preds = %if_then, %body
  %gsGlobal6 = getelementptr inbounds nuw i8, ptr %ps2, i32 4
  %gsGlobal7 = load i32, ptr %gsGlobal6, align 4
  %1 = tail call addrspace(1) i32 @gsKit_queue_exec(i32 %gsGlobal7)
  store i32 0, ptr %ps2, align 4
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
