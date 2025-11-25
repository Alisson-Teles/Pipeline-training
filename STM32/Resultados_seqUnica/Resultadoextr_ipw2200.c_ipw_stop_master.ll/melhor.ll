; ModuleID = 'angha-ll-stm32f1/extr_ipw2200.c_ipw_stop_master.ll'
source_filename = "out/extr_ipw2200.c_ipw_stop_master.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@IPW_RESET_REG = local_unnamed_addr global i32 0
@IPW_RESET_REG_MASTER_DISABLED = local_unnamed_addr global i32 0
@IPW_RESET_REG_STOP_MASTER = local_unnamed_addr global i32 0
@conststr = private unnamed_addr constant [3 x i8] c">>\0A"
@conststr.1 = private unnamed_addr constant [40 x i8] c"wait for stop master failed after 100ms\0A"
@conststr.2 = private unnamed_addr constant [17 x i8] c"stop master %dms\0A"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"ipw_priv:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @IPW_DEBUG_INFO(ptr, i32, i32 zeroext) local_unnamed_addr addrspace(1) #1

declare i32 @IPW_DEBUG_TRACE(ptr, i32 zeroext) local_unnamed_addr addrspace(1) #1

declare i32 @IPW_ERROR(ptr, i32 zeroext) local_unnamed_addr addrspace(1) #1

declare i32 @ipw_poll_bit(ptr, i32, i32, i32) local_unnamed_addr addrspace(1) #1

declare i32 @ipw_set_bit(ptr, i32, i32) local_unnamed_addr addrspace(1) #1

define i32 @ipw_stop_master(ptr %priv) local_unnamed_addr addrspace(1) #1 {
body:
  %0 = tail call addrspace(1) i32 @IPW_DEBUG_TRACE(ptr nonnull @conststr, i32 zeroext 3)
  %IPW_RESET_REG = load i32, ptr @IPW_RESET_REG, align 4
  %IPW_RESET_REG_STOP_MASTER = load i32, ptr @IPW_RESET_REG_STOP_MASTER, align 4
  %1 = tail call addrspace(1) i32 @ipw_set_bit(ptr %priv, i32 %IPW_RESET_REG, i32 %IPW_RESET_REG_STOP_MASTER)
  %IPW_RESET_REG3 = load i32, ptr @IPW_RESET_REG, align 4
  %IPW_RESET_REG_MASTER_DISABLED = load i32, ptr @IPW_RESET_REG_MASTER_DISABLED, align 4
  %2 = tail call addrspace(1) i32 @ipw_poll_bit(ptr %priv, i32 %IPW_RESET_REG3, i32 %IPW_RESET_REG_MASTER_DISABLED, i32 100)
  %cmpi = icmp slt i32 %2, 0
  br i1 %cmpi, label %if_then, label %if_cont

common.ret:                                       ; preds = %if_cont, %if_then
  %common.ret.op = phi i32 [ -1, %if_then ], [ %2, %if_cont ]
  ret i32 %common.ret.op

if_then:                                          ; preds = %body
  %3 = tail call addrspace(1) i32 @IPW_ERROR(ptr nonnull @conststr.1, i32 zeroext 40)
  br label %common.ret

if_cont:                                          ; preds = %body
  %4 = tail call addrspace(1) i32 @IPW_DEBUG_INFO(ptr nonnull @conststr.2, i32 %2, i32 zeroext 17)
  br label %common.ret
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
