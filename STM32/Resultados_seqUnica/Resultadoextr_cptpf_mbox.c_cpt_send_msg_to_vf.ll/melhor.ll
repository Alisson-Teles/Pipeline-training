; ModuleID = 'angha-ll-stm32f1/extr_cptpf_mbox.c_cpt_send_msg_to_vf.ll'
source_filename = "out/extr_cptpf_mbox.c_cpt_send_msg_to_vf.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"cpt_mbox:init"(ptr writeonly captures(none) initializes((0, 8)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  %gepdata = getelementptr inbounds nuw i8, ptr %_this, i32 4
  store i32 0, ptr %gepdata, align 4
  store i32 0, ptr %_this, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"cpt_device:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @CPTX_PF_VFX_MBOXX(i32, i32, i32) local_unnamed_addr addrspace(1) #1

declare i32 @cpt_write_csr64(i32, i32, i32) local_unnamed_addr addrspace(1) #1

define void @cpt_send_msg_to_vf(ptr readonly captures(none) %cpt, i32 %vf, ptr readonly captures(none) %mbx) local_unnamed_addr addrspace(1) #1 {
body:
  %reg_base4 = load i32, ptr %cpt, align 4
  %0 = tail call addrspace(1) i32 @CPTX_PF_VFX_MBOXX(i32 0, i32 %vf, i32 1)
  %data = getelementptr inbounds nuw i8, ptr %mbx, i32 4
  %data7 = load i32, ptr %data, align 4
  %1 = tail call addrspace(1) i32 @cpt_write_csr64(i32 %reg_base4, i32 %0, i32 %data7)
  %reg_base10 = load i32, ptr %cpt, align 4
  %2 = tail call addrspace(1) i32 @CPTX_PF_VFX_MBOXX(i32 0, i32 %vf, i32 0)
  %msg13 = load i32, ptr %mbx, align 4
  %3 = tail call addrspace(1) i32 @cpt_write_csr64(i32 %reg_base10, i32 %2, i32 %msg13)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
