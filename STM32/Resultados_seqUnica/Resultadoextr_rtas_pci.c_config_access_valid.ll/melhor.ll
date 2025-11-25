; ModuleID = 'angha-ll-stm32f1/extr_rtas_pci.c_config_access_valid.ll'
source_filename = "out/extr_rtas_pci.c_config_access_valid.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"pci_dn:init"(ptr writeonly captures(none) initializes((0, 8)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i64 0, ptr %_this, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read)
define range(i32 0, 2) i32 @config_access_valid(ptr readonly captures(none) %dn, i32 %where) local_unnamed_addr addrspace(1) #1 {
body:
  %cmpi = icmp slt i32 %where, 256
  br i1 %cmpi, label %common.ret, label %if_cont

common.ret:                                       ; preds = %if_cont10, %fullev, %body
  %common.ret.op = phi i32 [ 0, %if_cont10 ], [ 1, %body ], [ 1, %fullev ]
  ret i32 %common.ret.op

if_cont:                                          ; preds = %body
  %cmpi5 = icmp slt i32 %where, 4096
  br i1 %cmpi5, label %fullev, label %if_cont10

fullev:                                           ; preds = %if_cont
  %pci_ext_config_space6 = load i64, ptr %dn, align 8
  %cmpi7.not = icmp eq i64 %pci_ext_config_space6, 0
  br i1 %cmpi7.not, label %if_cont10, label %common.ret

if_cont10:                                        ; preds = %fullev, %if_cont
  br label %common.ret
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
