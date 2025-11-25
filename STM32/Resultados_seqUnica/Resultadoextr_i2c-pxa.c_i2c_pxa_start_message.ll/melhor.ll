; ModuleID = 'angha-ll-stm32f1/extr_i2c-pxa.c_i2c_pxa_start_message.ll'
source_filename = "out/extr_i2c-pxa.c_i2c_pxa_start_message.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@ICR_ALDIE = local_unnamed_addr global i32 0
@ICR_START = local_unnamed_addr global i32 0
@ICR_STOP = local_unnamed_addr global i32 0
@ICR_TB = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"pxa_i2c:init"(ptr writeonly captures(none) initializes((0, 8)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  %gepmsg = getelementptr inbounds nuw i8, ptr %_this, i32 4
  store i32 0, ptr %gepmsg, align 4
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @_ICR(ptr) local_unnamed_addr addrspace(1) #1

declare i32 @_IDBR(ptr) local_unnamed_addr addrspace(1) #1

declare i32 @i2c_pxa_addr_byte(i32) local_unnamed_addr addrspace(1) #1

declare i32 @readl(i32) local_unnamed_addr addrspace(1) #1

declare i32 @writel(i32, i32) local_unnamed_addr addrspace(1) #1

define void @i2c_pxa_start_message(ptr %i2c) local_unnamed_addr addrspace(1) #1 {
body:
  %msg = getelementptr inbounds nuw i8, ptr %i2c, i32 4
  %msg2 = load i32, ptr %msg, align 4
  %0 = tail call addrspace(1) i32 @i2c_pxa_addr_byte(i32 %msg2)
  %1 = tail call addrspace(1) i32 @_IDBR(ptr %i2c)
  %2 = tail call addrspace(1) i32 @writel(i32 %0, i32 %1)
  %msg7 = load i32, ptr %msg, align 4
  %3 = tail call addrspace(1) i32 @i2c_pxa_addr_byte(i32 %msg7)
  store i32 %3, ptr %i2c, align 4
  %4 = tail call addrspace(1) i32 @_ICR(ptr nonnull %i2c)
  %5 = tail call addrspace(1) i32 @readl(i32 %4)
  %ICR_STOP = load i32, ptr @ICR_STOP, align 4
  %ICR_ALDIE = load i32, ptr @ICR_ALDIE, align 4
  %binop = or i32 %ICR_ALDIE, %ICR_STOP
  %neg = xor i32 %binop, -1
  %binop9 = and i32 %5, %neg
  %ICR_START = load i32, ptr @ICR_START, align 4
  %binop11 = or i32 %binop9, %ICR_START
  %ICR_TB = load i32, ptr @ICR_TB, align 4
  %binop12 = or i32 %binop11, %ICR_TB
  %6 = tail call addrspace(1) i32 @_ICR(ptr nonnull %i2c)
  %7 = tail call addrspace(1) i32 @writel(i32 %binop12, i32 %6)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
