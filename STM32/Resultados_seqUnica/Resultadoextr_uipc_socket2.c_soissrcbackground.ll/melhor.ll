; ModuleID = 'angha-ll-stm32f1/extr_uipc_socket2.c_soissrcbackground.ll'
source_filename = "out/extr_uipc_socket2.c_soissrcbackground.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@SOF1_TRAFFIC_MGT_SO_BACKGROUND = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"socket:init"(ptr writeonly captures(none) initializes((0, 8)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  %gepso_traffic_class = getelementptr inbounds nuw i8, ptr %_this, i32 4
  store i32 0, ptr %gepso_traffic_class, align 4
  ret void
}

declare i64 @IS_SO_TC_BACKGROUND(i32) local_unnamed_addr addrspace(1) #1

define range(i32 0, 2) i32 @soissrcbackground(ptr readonly captures(none) %so) local_unnamed_addr addrspace(1) #1 {
body:
  %so_flags12 = load i32, ptr %so, align 4
  %SOF1_TRAFFIC_MGT_SO_BACKGROUND = load i32, ptr @SOF1_TRAFFIC_MGT_SO_BACKGROUND, align 4
  %binop = and i32 %SOF1_TRAFFIC_MGT_SO_BACKGROUND, %so_flags12
  %cmpi.not = icmp eq i32 %binop, 0
  br i1 %cmpi.not, label %fullev, label %phiblock

fullev:                                           ; preds = %body
  %so_traffic_class = getelementptr inbounds nuw i8, ptr %so, i32 4
  %so_traffic_class4 = load i32, ptr %so_traffic_class, align 4
  %0 = tail call addrspace(1) i64 @IS_SO_TC_BACKGROUND(i32 %so_traffic_class4)
  %cmpi5 = icmp ne i64 %0, 0
  %1 = zext i1 %cmpi5 to i32
  br label %phiblock

phiblock:                                         ; preds = %fullev, %body
  %phi = phi i32 [ 1, %body ], [ %1, %fullev ]
  ret i32 %phi
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
