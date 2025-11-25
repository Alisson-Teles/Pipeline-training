; ModuleID = 'angha-ll-stm32f1/extr_ggated.c_connection_ready.ll'
source_filename = "out/extr_ggated.c_connection_ready.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"ggd_connection:init"(ptr writeonly captures(none) initializes((0, 8)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  %gepc_recvfd = getelementptr inbounds nuw i8, ptr %_this, i32 4
  store i32 0, ptr %gepc_recvfd, align 4
  store i32 0, ptr %_this, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read)
define range(i32 0, 2) i32 @connection_ready(ptr readonly captures(none) %conn) local_unnamed_addr addrspace(1) #1 {
body:
  %c_sendfd2 = load i32, ptr %conn, align 4
  %cmpi.not = icmp eq i32 %c_sendfd2, -1
  br i1 %cmpi.not, label %phiblock, label %fullev

fullev:                                           ; preds = %body
  %c_recvfd = getelementptr inbounds nuw i8, ptr %conn, i32 4
  %c_recvfd4 = load i32, ptr %c_recvfd, align 4
  %cmpi5 = icmp ne i32 %c_recvfd4, -1
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
