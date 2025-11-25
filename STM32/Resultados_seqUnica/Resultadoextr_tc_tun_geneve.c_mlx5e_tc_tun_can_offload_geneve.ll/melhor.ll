; ModuleID = 'angha-ll-stm32f1/extr_tc_tun_geneve.c_mlx5e_tc_tun_can_offload_geneve.ll'
source_filename = "out/extr_tc_tun_geneve.c_mlx5e_tc_tun_can_offload_geneve.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@MLX5_FLEX_PROTO_GENEVE = local_unnamed_addr global i32 0
@flex_parser_protocols = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"mlx5e_priv:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @MLX5_CAP_GEN(i32, i32) local_unnamed_addr addrspace(1) #1

define range(i32 0, 2) i32 @mlx5e_tc_tun_can_offload_geneve(ptr readonly captures(none) %priv) local_unnamed_addr addrspace(1) #1 {
body:
  %mdev2 = load i32, ptr %priv, align 4
  %flex_parser_protocols = load i32, ptr @flex_parser_protocols, align 4
  %0 = tail call addrspace(1) i32 @MLX5_CAP_GEN(i32 %mdev2, i32 %flex_parser_protocols)
  %MLX5_FLEX_PROTO_GENEVE = load i32, ptr @MLX5_FLEX_PROTO_GENEVE, align 4
  %binop = and i32 %MLX5_FLEX_PROTO_GENEVE, %0
  %cmpi = icmp ne i32 %binop, 0
  %zext = zext i1 %cmpi to i32
  ret i32 %zext
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
