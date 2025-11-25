; ModuleID = 'angha-ll-stm32f1/extr_stm32f4xx_i2c.c_I2C_FastModeDutyCycleConfig.ll'
source_filename = "out/extr_stm32f4xx_i2c.c_I2C_FastModeDutyCycleConfig.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@I2C_DutyCycle_16_9 = local_unnamed_addr global i32 0
@I2C_DutyCycle_2 = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"TYPE_4__:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @IS_I2C_ALL_PERIPH(ptr) local_unnamed_addr addrspace(1) #1

declare i32 @IS_I2C_DUTY_CYCLE(i32) local_unnamed_addr addrspace(1) #1

declare i32 @assert_param(i32) local_unnamed_addr addrspace(1) #1

define void @I2C_FastModeDutyCycleConfig(ptr %I2Cx, i32 %I2C_DutyCycle) local_unnamed_addr addrspace(1) #1 {
body:
  %0 = tail call addrspace(1) i32 @IS_I2C_ALL_PERIPH(ptr %I2Cx)
  %1 = tail call addrspace(1) i32 @assert_param(i32 %0)
  %2 = tail call addrspace(1) i32 @IS_I2C_DUTY_CYCLE(i32 %I2C_DutyCycle)
  %3 = tail call addrspace(1) i32 @assert_param(i32 %2)
  %I2C_DutyCycle_16_9 = load i32, ptr @I2C_DutyCycle_16_9, align 4
  %cmpi.not = icmp eq i32 %I2C_DutyCycle, %I2C_DutyCycle_16_9
  %loadleftv8 = load i32, ptr %I2Cx, align 4
  %I2C_DutyCycle_2 = load i32, ptr @I2C_DutyCycle_2, align 4
  %binop = and i32 %I2C_DutyCycle_2, %loadleftv8
  %binop10 = or i32 %loadleftv8, %I2C_DutyCycle_16_9
  %storemerge = select i1 %cmpi.not, i32 %binop10, i32 %binop
  store i32 %storemerge, ptr %I2Cx, align 4
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
