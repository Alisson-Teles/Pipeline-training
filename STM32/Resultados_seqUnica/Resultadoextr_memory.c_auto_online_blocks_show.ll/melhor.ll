; ModuleID = 'angha-ll-stm32f1/extr_memory.c_auto_online_blocks_show.ll'
source_filename = "out/extr_memory.c_auto_online_blocks_show.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@memhp_auto_online = local_unnamed_addr global i64 0
@conststr = private unnamed_addr constant [7 x i8] c"online\0A"
@conststr.1 = private unnamed_addr constant [8 x i8] c"offline\0A"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"device_attribute:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"device:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @sprintf(ptr, ptr, i32 zeroext, i32 zeroext) local_unnamed_addr addrspace(1) #1

define i32 @auto_online_blocks_show(ptr readnone captures(none) %dev, ptr readnone captures(none) %attr, ptr %buf, i32 zeroext %buf.size) local_unnamed_addr addrspace(1) #1 {
body:
  %memhp_auto_online = load i64, ptr @memhp_auto_online, align 8
  %cmpi.not = icmp eq i64 %memhp_auto_online, 0
  br i1 %cmpi.not, label %if_else, label %if_then

common.ret:                                       ; preds = %if_else, %if_then
  %common.ret.op = phi i32 [ %0, %if_then ], [ %1, %if_else ]
  ret i32 %common.ret.op

if_then:                                          ; preds = %body
  %0 = tail call addrspace(1) i32 @sprintf(ptr %buf, ptr nonnull @conststr, i32 zeroext %buf.size, i32 zeroext 7)
  br label %common.ret

if_else:                                          ; preds = %body
  %1 = tail call addrspace(1) i32 @sprintf(ptr %buf, ptr nonnull @conststr.1, i32 zeroext %buf.size, i32 zeroext 8)
  br label %common.ret
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
