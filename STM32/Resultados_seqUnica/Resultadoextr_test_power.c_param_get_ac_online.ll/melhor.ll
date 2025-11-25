; ModuleID = 'angha-ll-stm32f1/extr_test_power.c_param_get_ac_online.ll'
source_filename = "out/extr_test_power.c_param_get_ac_online.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@ac_online = local_unnamed_addr global i32 0
@map_ac_online = local_unnamed_addr global i32 0
@conststr = private unnamed_addr constant [7 x i8] c"unknown"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"kernel_param:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @map_get_key(i32, i32, ptr, i32 zeroext) local_unnamed_addr addrspace(1) #1

declare i32 @strcpy(ptr, i32, i32 zeroext) local_unnamed_addr addrspace(1) #1

declare i32 @strlen(ptr, i32 zeroext) local_unnamed_addr addrspace(1) #1

define i32 @param_get_ac_online(ptr %buffer, ptr readnone captures(none) %kp, i32 zeroext %buffer.size) local_unnamed_addr addrspace(1) #1 {
body:
  %map_ac_online = load i32, ptr @map_ac_online, align 4
  %ac_online = load i32, ptr @ac_online, align 4
  %0 = tail call addrspace(1) i32 @map_get_key(i32 %map_ac_online, i32 %ac_online, ptr nonnull @conststr, i32 zeroext 7)
  %1 = tail call addrspace(1) i32 @strcpy(ptr %buffer, i32 %0, i32 zeroext %buffer.size)
  %2 = tail call addrspace(1) i32 @strlen(ptr %buffer, i32 zeroext %buffer.size)
  ret i32 %2
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
