; ModuleID = 'angha-ll-stm32f1/extr_mlx4_port.c_mlx4_SET_PORT_wrapper.ll'
source_filename = "out/extr_mlx4_port.c_mlx4_SET_PORT_wrapper.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@EINVAL = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"mlx4_vhcr:init"(ptr writeonly captures(none) initializes((0, 8)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  %gepop_modifier = getelementptr inbounds nuw i8, ptr %_this, i32 4
  store i32 0, ptr %gepop_modifier, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"mlx4_dev:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"mlx4_cmd_mailbox:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"mlx4_cmd_info:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @mlx4_common_set_port(ptr, i32, i32, i32, ptr) local_unnamed_addr addrspace(1) #1

declare i32 @mlx4_slave_convert_port(ptr, i32, i32) local_unnamed_addr addrspace(1) #1

define i32 @mlx4_SET_PORT_wrapper(ptr %dev, i32 %slave, ptr captures(none) %vhcr, ptr %inbox, ptr readnone captures(none) %outbox, ptr readnone captures(none) %cmd) local_unnamed_addr addrspace(1) #1 {
body:
  %in_modifier9 = load i32, ptr %vhcr, align 4
  %binop = and i32 %in_modifier9, 255
  %0 = tail call addrspace(1) i32 @mlx4_slave_convert_port(ptr %dev, i32 %slave, i32 %binop)
  %cmpi = icmp slt i32 %0, 0
  br i1 %cmpi, label %if_then, label %if_cont

common.ret:                                       ; preds = %if_cont, %if_then
  %common.ret.op = phi i32 [ %binop11, %if_then ], [ %1, %if_cont ]
  ret i32 %common.ret.op

if_then:                                          ; preds = %body
  %EINVAL = load i32, ptr @EINVAL, align 4
  %binop11 = sub i32 0, %EINVAL
  br label %common.ret

if_cont:                                          ; preds = %body
  %in_modifier16 = load i32, ptr %vhcr, align 4
  %binop17 = and i32 %in_modifier16, -256
  %binop19 = and i32 %0, 255
  %binop20 = or disjoint i32 %binop17, %binop19
  store i32 %binop20, ptr %vhcr, align 4
  %op_modifier = getelementptr inbounds nuw i8, ptr %vhcr, i32 4
  %op_modifier27 = load i32, ptr %op_modifier, align 4
  %1 = tail call addrspace(1) i32 @mlx4_common_set_port(ptr %dev, i32 %slave, i32 %binop20, i32 %op_modifier27, ptr %inbox)
  br label %common.ret
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
