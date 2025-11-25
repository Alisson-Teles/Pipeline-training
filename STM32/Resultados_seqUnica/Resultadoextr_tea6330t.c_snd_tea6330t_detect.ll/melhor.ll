; ModuleID = 'angha-ll-stm32f1/extr_tea6330t.c_snd_tea6330t_detect.ll'
source_filename = "out/extr_tea6330t.c_snd_tea6330t_detect.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@TEA6330T_ADDR = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"snd_i2c_bus:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @snd_i2c_lock(ptr) local_unnamed_addr addrspace(1) #1

declare i32 @snd_i2c_probeaddr(ptr, i32) local_unnamed_addr addrspace(1) #1

declare i32 @snd_i2c_unlock(ptr) local_unnamed_addr addrspace(1) #1

define i32 @snd_tea6330t_detect(ptr %bus, i32 %equalizer) local_unnamed_addr addrspace(1) #1 {
body:
  %0 = tail call addrspace(1) i32 @snd_i2c_lock(ptr %bus)
  %TEA6330T_ADDR = load i32, ptr @TEA6330T_ADDR, align 4
  %1 = tail call addrspace(1) i32 @snd_i2c_probeaddr(ptr %bus, i32 %TEA6330T_ADDR)
  %2 = tail call addrspace(1) i32 @snd_i2c_unlock(ptr %bus)
  ret i32 %1
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
