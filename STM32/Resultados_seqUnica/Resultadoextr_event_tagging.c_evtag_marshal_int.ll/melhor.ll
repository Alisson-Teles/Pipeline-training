; ModuleID = 'angha-ll-stm32f1/extr_event_tagging.c_evtag_marshal_int.ll'
source_filename = "out/extr_event_tagging.c_evtag_marshal_int.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"evbuffer:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @encode_int_internal(ptr, i32, i32 zeroext) local_unnamed_addr addrspace(1) #1

declare i32 @evbuffer_add(ptr, ptr, i32, i32 zeroext) local_unnamed_addr addrspace(1) #1

declare i32 @evtag_encode_int(ptr, i32) local_unnamed_addr addrspace(1) #1

declare i32 @evtag_encode_tag(ptr, i32) local_unnamed_addr addrspace(1) #1

define void @evtag_marshal_int(ptr %evbuf, i32 %tag, i32 %integer) local_unnamed_addr addrspace(1) #1 {
body:
  %data = alloca [5 x i32], align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %data, i8 0, i64 20, i1 false)
  %0 = call addrspace(1) i32 @encode_int_internal(ptr nonnull %data, i32 %integer, i32 zeroext 5)
  %1 = call addrspace(1) i32 @evtag_encode_tag(ptr %evbuf, i32 %tag)
  %2 = call addrspace(1) i32 @evtag_encode_int(ptr %evbuf, i32 %0)
  %3 = call addrspace(1) i32 @evbuffer_add(ptr %evbuf, ptr nonnull %data, i32 %0, i32 zeroext 5)
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
