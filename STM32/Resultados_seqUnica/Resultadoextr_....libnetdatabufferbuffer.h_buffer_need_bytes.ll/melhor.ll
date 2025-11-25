; ModuleID = 'angha-ll-stm32f1/extr_....libnetdatabufferbuffer.h_buffer_need_bytes.ll'
source_filename = "out/extr_....libnetdatabufferbuffer.h_buffer_need_bytes.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"TYPE_4__:init"(ptr writeonly captures(none) initializes((0, 8)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  %geplen = getelementptr inbounds nuw i8, ptr %_this, i32 4
  store i32 0, ptr %geplen, align 4
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @buffer_increase(ptr, i32 zeroext) local_unnamed_addr addrspace(1) #1

declare i64 @unlikely(i32) local_unnamed_addr addrspace(1) #1

define void @buffer_need_bytes(ptr %buffer, i32 zeroext %needed_free_size) local_unnamed_addr addrspace(1) #1 {
body:
  %size3 = load i32, ptr %buffer, align 4
  %len = getelementptr inbounds nuw i8, ptr %buffer, i32 4
  %len5 = load i32, ptr %len, align 4
  %binop = sub i32 %size3, %len5
  %cmpi = icmp ult i32 %binop, %needed_free_size
  %zext = zext i1 %cmpi to i32
  %0 = tail call addrspace(1) i64 @unlikely(i32 %zext)
  %cmpi7.not = icmp eq i64 %0, 0
  br i1 %cmpi7.not, label %if_cont, label %if_then

if_then:                                          ; preds = %body
  %1 = tail call addrspace(1) i32 @buffer_increase(ptr nonnull %buffer, i32 zeroext %needed_free_size)
  br label %if_cont

if_cont:                                          ; preds = %if_then, %body
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
