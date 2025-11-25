; ModuleID = 'angha-ll-stm32f1/extr_dsi_host.c_dsi_op_mode_config.ll'
source_filename = "out/extr_dsi_host.c_dsi_op_mode_config.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@DSI_CTRL_CMD_MODE_EN = local_unnamed_addr global i32 0
@DSI_CTRL_ENABLE = local_unnamed_addr global i32 0
@DSI_CTRL_VID_MODE_EN = local_unnamed_addr global i32 0
@DSI_IRQ_MASK_CMD_MDP_DONE = local_unnamed_addr global i32 0
@DSI_IRQ_MASK_VIDEO_DONE = local_unnamed_addr global i32 0
@REG_DSI_CTRL = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"msm_dsi_host:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @dsi_intr_ctrl(ptr, i32, i32) local_unnamed_addr addrspace(1) #1

declare i32 @dsi_read(ptr, i32) local_unnamed_addr addrspace(1) #1

declare i32 @dsi_write(ptr, i32, i32) local_unnamed_addr addrspace(1) #1

define void @dsi_op_mode_config(ptr %msm_host, i32 %video_mode, i32 %enable) local_unnamed_addr addrspace(1) #1 {
body:
  %REG_DSI_CTRL = load i32, ptr @REG_DSI_CTRL, align 4
  %0 = tail call addrspace(1) i32 @dsi_read(ptr %msm_host, i32 %REG_DSI_CTRL)
  %cmpi = icmp eq i32 %enable, 0
  br i1 %cmpi, label %if_then, label %if_else

if_then:                                          ; preds = %body
  %DSI_CTRL_ENABLE = load i32, ptr @DSI_CTRL_ENABLE, align 4
  %DSI_CTRL_VID_MODE_EN = load i32, ptr @DSI_CTRL_VID_MODE_EN, align 4
  %binop = or i32 %DSI_CTRL_VID_MODE_EN, %DSI_CTRL_ENABLE
  %DSI_CTRL_CMD_MODE_EN = load i32, ptr @DSI_CTRL_CMD_MODE_EN, align 4
  %binop5 = or i32 %binop, %DSI_CTRL_CMD_MODE_EN
  %neg = xor i32 %binop5, -1
  %binop6 = and i32 %0, %neg
  %DSI_IRQ_MASK_CMD_MDP_DONE = load i32, ptr @DSI_IRQ_MASK_CMD_MDP_DONE, align 4
  %DSI_IRQ_MASK_VIDEO_DONE = load i32, ptr @DSI_IRQ_MASK_VIDEO_DONE, align 4
  %binop8 = or i32 %DSI_IRQ_MASK_VIDEO_DONE, %DSI_IRQ_MASK_CMD_MDP_DONE
  %1 = tail call addrspace(1) i32 @dsi_intr_ctrl(ptr %msm_host, i32 %binop8, i32 0)
  br label %if_cont24

if_else:                                          ; preds = %body
  %cmpi10.not = icmp eq i32 %video_mode, 0
  br i1 %cmpi10.not, label %if_else15, label %if_then11

if_then11:                                        ; preds = %if_else
  %DSI_CTRL_VID_MODE_EN13 = load i32, ptr @DSI_CTRL_VID_MODE_EN, align 4
  br label %if_cont

if_else15:                                        ; preds = %if_else
  %DSI_CTRL_CMD_MODE_EN17 = load i32, ptr @DSI_CTRL_CMD_MODE_EN, align 4
  %DSI_IRQ_MASK_CMD_MDP_DONE20 = load i32, ptr @DSI_IRQ_MASK_CMD_MDP_DONE, align 4
  %2 = tail call addrspace(1) i32 @dsi_intr_ctrl(ptr %msm_host, i32 %DSI_IRQ_MASK_CMD_MDP_DONE20, i32 1)
  br label %if_cont

if_cont:                                          ; preds = %if_else15, %if_then11
  %DSI_CTRL_VID_MODE_EN13.pn = phi i32 [ %DSI_CTRL_VID_MODE_EN13, %if_then11 ], [ %DSI_CTRL_CMD_MODE_EN17, %if_else15 ]
  %DSI_CTRL_ENABLE22 = load i32, ptr @DSI_CTRL_ENABLE, align 4
  %3 = or i32 %DSI_CTRL_VID_MODE_EN13.pn, %DSI_CTRL_ENABLE22
  %binop23 = or i32 %3, %0
  br label %if_cont24

if_cont24:                                        ; preds = %if_cont, %if_then
  %dsi_ctrl.1 = phi i32 [ %binop6, %if_then ], [ %binop23, %if_cont ]
  %REG_DSI_CTRL26 = load i32, ptr @REG_DSI_CTRL, align 4
  %4 = tail call addrspace(1) i32 @dsi_write(ptr %msm_host, i32 %REG_DSI_CTRL26, i32 %dsi_ctrl.1)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
