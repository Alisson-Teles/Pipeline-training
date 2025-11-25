; ModuleID = 'angha-ll-stm32f1/extr_bufferevent_openssl.c_set_rbow.ll'
source_filename = "out/extr_bufferevent_openssl.c_set_rbow.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"bufferevent_openssl:init"(ptr writeonly captures(none) initializes((0, 8)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  %gepunderlying = getelementptr inbounds nuw i8, ptr %_this, i32 4
  store i32 0, ptr %gepunderlying, align 4
  ret void
}

declare i32 @start_writing(ptr) local_unnamed_addr addrspace(1) #1

declare i32 @stop_reading(ptr) local_unnamed_addr addrspace(1) #1

define i32 @set_rbow(ptr %bev_ssl) local_unnamed_addr addrspace(1) #1 {
body:
  %underlying = getelementptr inbounds nuw i8, ptr %bev_ssl, i32 4
  %underlying2 = load i32, ptr %underlying, align 4
  %cmpi = icmp eq i32 %underlying2, 0
  br i1 %cmpi, label %if_then, label %if_cont

if_then:                                          ; preds = %body
  %0 = tail call addrspace(1) i32 @stop_reading(ptr %bev_ssl)
  br label %if_cont

if_cont:                                          ; preds = %if_then, %body
  store i32 1, ptr %bev_ssl, align 4
  %1 = tail call addrspace(1) i32 @start_writing(ptr nonnull %bev_ssl)
  ret i32 %1
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
