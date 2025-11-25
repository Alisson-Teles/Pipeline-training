; ModuleID = 'angha-ll-stm32f1/extr_ocelot.c_ocelot_port_vlan_del_vlan.ll'
source_filename = "out/extr_ocelot.c_ocelot_port_vlan_del_vlan.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"switchdev_obj_port_vlan:init"(ptr writeonly captures(none) initializes((0, 16)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %_this, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"net_device:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @ocelot_vlan_vid_del(ptr, i64) local_unnamed_addr addrspace(1) #1

define i32 @ocelot_port_vlan_del_vlan(ptr %dev, ptr readonly captures(none) %vlan) local_unnamed_addr addrspace(1) #1 {
body:
  %vid_begin3 = load i64, ptr %vlan, align 8
  %vid_end = getelementptr inbounds nuw i8, ptr %vlan, i32 8
  %vid_end612 = load i64, ptr %vid_end, align 8
  %cmpi.not13 = icmp sgt i64 %vid_begin3, %vid_end612
  br i1 %cmpi.not13, label %common.ret, label %while_body

while_cond:                                       ; preds = %while_body
  %binop = add i64 %vid.014, 1
  %vid_end6 = load i64, ptr %vid_end, align 8
  %cmpi.not = icmp sgt i64 %binop, %vid_end6
  br i1 %cmpi.not, label %common.ret, label %while_body

while_body:                                       ; preds = %while_cond, %body
  %vid.014 = phi i64 [ %binop, %while_cond ], [ %vid_begin3, %body ]
  %0 = tail call addrspace(1) i32 @ocelot_vlan_vid_del(ptr %dev, i64 %vid.014)
  %cmpi10.not = icmp eq i32 %0, 0
  br i1 %cmpi10.not, label %while_cond, label %common.ret

common.ret:                                       ; preds = %while_body, %while_cond, %body
  %common.ret.op = phi i32 [ 0, %body ], [ 0, %while_cond ], [ %0, %while_body ]
  ret i32 %common.ret.op
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
