; ModuleID = 'angha-ll-stm32f1/extr_usb-init.c_nlm_usb_hw_reset.ll'
source_filename = "out/extr_usb-init.c_nlm_usb_hw_reset.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@USB_CONTROLLER_RESET = local_unnamed_addr global i32 0
@USB_CTL_0 = local_unnamed_addr global i32 0
@USB_PHY_0 = local_unnamed_addr global i32 0
@USB_PHY_PORT_RESET_0 = local_unnamed_addr global i32 0
@USB_PHY_PORT_RESET_1 = local_unnamed_addr global i32 0
@USB_PHY_RESET = local_unnamed_addr global i32 0

declare i32 @mdelay(i32) local_unnamed_addr addrspace(1) #0

declare i32 @nlm_get_usb_regbase(i32, i32) local_unnamed_addr addrspace(1) #0

declare i32 @nlm_read_usb_reg(i32, i32) local_unnamed_addr addrspace(1) #0

declare i32 @nlm_write_usb_reg(i32, i32, i32) local_unnamed_addr addrspace(1) #0

define void @nlm_usb_hw_reset(i32 %node, i32 %port) local_unnamed_addr addrspace(1) #0 {
body:
  %0 = tail call addrspace(1) i32 @nlm_get_usb_regbase(i32 %node, i32 %port)
  %USB_PHY_0 = load i32, ptr @USB_PHY_0, align 4
  %1 = tail call addrspace(1) i32 @nlm_read_usb_reg(i32 %0, i32 %USB_PHY_0)
  %USB_PHY_RESET = load i32, ptr @USB_PHY_RESET, align 4
  %USB_PHY_PORT_RESET_0 = load i32, ptr @USB_PHY_PORT_RESET_0, align 4
  %binop = or i32 %USB_PHY_PORT_RESET_0, %USB_PHY_RESET
  %USB_PHY_PORT_RESET_1 = load i32, ptr @USB_PHY_PORT_RESET_1, align 4
  %binop6 = or i32 %binop, %USB_PHY_PORT_RESET_1
  %neg = xor i32 %binop6, -1
  %binop7 = and i32 %1, %neg
  %USB_PHY_09 = load i32, ptr @USB_PHY_0, align 4
  %2 = tail call addrspace(1) i32 @nlm_write_usb_reg(i32 %0, i32 %USB_PHY_09, i32 %binop7)
  %3 = tail call addrspace(1) i32 @mdelay(i32 100)
  %USB_CTL_0 = load i32, ptr @USB_CTL_0, align 4
  %4 = tail call addrspace(1) i32 @nlm_read_usb_reg(i32 %0, i32 %USB_CTL_0)
  %USB_CONTROLLER_RESET = load i32, ptr @USB_CONTROLLER_RESET, align 4
  %neg13 = xor i32 %USB_CONTROLLER_RESET, -1
  %binop14 = and i32 %4, %neg13
  %binop16 = or i32 %binop14, 4
  %USB_CTL_018 = load i32, ptr @USB_CTL_0, align 4
  %5 = tail call addrspace(1) i32 @nlm_write_usb_reg(i32 %0, i32 %USB_CTL_018, i32 %binop16)
  ret void
}

attributes #0 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
