; ModuleID = 'angha-ll-stm32f1/extr_ip6_tunnel.c_ip6_tnl_change_mtu.ll'
source_filename = "out/extr_ip6_tunnel.c_ip6_tnl_change_mtu.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@EINVAL = local_unnamed_addr global i32 0
@IPV6_MIN_MTU = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"net_device:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none)
define i32 @ip6_tnl_change_mtu(ptr writeonly captures(none) %dev, i32 %new_mtu) local_unnamed_addr addrspace(1) #1 {
body:
  %IPV6_MIN_MTU = load i32, ptr @IPV6_MIN_MTU, align 4
  %cmpi = icmp slt i32 %new_mtu, %IPV6_MIN_MTU
  br i1 %cmpi, label %if_then, label %if_cont

common.ret:                                       ; preds = %if_cont, %if_then
  %common.ret.op = phi i32 [ %binop, %if_then ], [ 0, %if_cont ]
  ret i32 %common.ret.op

if_then:                                          ; preds = %body
  %EINVAL = load i32, ptr @EINVAL, align 4
  %binop = sub i32 0, %EINVAL
  br label %common.ret

if_cont:                                          ; preds = %body
  store i32 %new_mtu, ptr %dev, align 4
  br label %common.ret
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
