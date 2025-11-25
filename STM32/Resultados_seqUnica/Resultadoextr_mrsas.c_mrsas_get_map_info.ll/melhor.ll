; ModuleID = 'angha-ll-stm32f1/extr_mrsas.c_mrsas_get_map_info.ll'
source_filename = "out/extr_mrsas.c_mrsas_get_map_info.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"mrsas_softc:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i64 @MR_ValidateMapInfo(ptr) local_unnamed_addr addrspace(1) #1

declare i32 @mrsas_get_ld_map_info(ptr) local_unnamed_addr addrspace(1) #1

define range(i32 0, 2) i32 @mrsas_get_map_info(ptr initializes((0, 4)) %sc) local_unnamed_addr addrspace(1) #1 {
body:
  store i32 0, ptr %sc, align 4
  %0 = tail call addrspace(1) i32 @mrsas_get_ld_map_info(ptr nonnull %sc)
  %cmpi = icmp eq i32 %0, 0
  br i1 %cmpi, label %if_then, label %common.ret

if_then:                                          ; preds = %body
  %1 = tail call addrspace(1) i64 @MR_ValidateMapInfo(ptr nonnull %sc)
  %cmpi5 = icmp eq i64 %1, 0
  br i1 %cmpi5, label %if_then6, label %common.ret

common.ret:                                       ; preds = %if_then6, %if_then, %body
  %common.ret.op = phi i32 [ 0, %if_then6 ], [ 1, %body ], [ 1, %if_then ]
  ret i32 %common.ret.op

if_then6:                                         ; preds = %if_then
  store i32 1, ptr %sc, align 4
  br label %common.ret
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
