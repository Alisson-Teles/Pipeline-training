; ModuleID = 'angha-ll-stm32f1/extr_ai_dmnet.c_AIEnter_Battle_Retreat.ll'
source_filename = "out/extr_ai_dmnet.c_AIEnter_Battle_Retreat.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@AINode_Battle_Retreat = local_unnamed_addr global i32 0
@conststr = private unnamed_addr constant [14 x i8] c"battle retreat"
@conststr.1 = private unnamed_addr constant [0 x i8] zeroinitializer

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"TYPE_4__:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @BotRecordNodeSwitch(ptr, ptr, ptr, ptr, i32 zeroext, i32 zeroext, i32 zeroext) local_unnamed_addr addrspace(1) #1

define void @AIEnter_Battle_Retreat(ptr %bs, ptr %s, i32 zeroext %s.size) local_unnamed_addr addrspace(1) #1 {
body:
  %0 = tail call addrspace(1) i32 @BotRecordNodeSwitch(ptr %bs, ptr nonnull @conststr, ptr nonnull @conststr.1, ptr %s, i32 zeroext 14, i32 zeroext 0, i32 zeroext %s.size)
  %AINode_Battle_Retreat = load i32, ptr @AINode_Battle_Retreat, align 4
  store i32 %AINode_Battle_Retreat, ptr %bs, align 4
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
