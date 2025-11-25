; ModuleID = 'angha-ll-stm32f1/extr_gpio.c_gpio_is_valid.ll'
source_filename = "out/extr_gpio.c_gpio_is_valid.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@U300_GPIO_NUM_PORTS = local_unnamed_addr global i32 0
@U300_GPIO_PINS_PER_PORT = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none)
define range(i32 0, 2) i32 @gpio_is_valid(i32 %number) local_unnamed_addr addrspace(1) #0 {
body:
  %cmpi = icmp sgt i32 %number, -1
  %U300_GPIO_NUM_PORTS = load i32, ptr @U300_GPIO_NUM_PORTS, align 4
  %U300_GPIO_PINS_PER_PORT = load i32, ptr @U300_GPIO_PINS_PER_PORT, align 4
  %binop = mul i32 %U300_GPIO_PINS_PER_PORT, %U300_GPIO_NUM_PORTS
  %cmpi4 = icmp slt i32 %number, %binop
  %phi = select i1 %cmpi, i1 %cmpi4, i1 false
  %common.ret.op = zext i1 %phi to i32
  ret i32 %common.ret.op
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
