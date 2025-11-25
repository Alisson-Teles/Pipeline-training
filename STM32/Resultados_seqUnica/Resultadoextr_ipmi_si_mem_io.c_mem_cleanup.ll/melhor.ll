; ModuleID = 'angha-ll-stm32f1/extr_ipmi_si_mem_io.c_mem_cleanup.ll'
source_filename = "out/extr_ipmi_si_mem_io.c_mem_cleanup.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"si_sm_io:init"(ptr writeonly captures(none) initializes((0, 4), (8, 16)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  %gepaddr = getelementptr inbounds nuw i8, ptr %_this, i32 8
  store i64 0, ptr %gepaddr, align 8
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @iounmap(i64) local_unnamed_addr addrspace(1) #1

declare i32 @mem_region_cleanup(ptr, i32) local_unnamed_addr addrspace(1) #1

define void @mem_cleanup(ptr %io) local_unnamed_addr addrspace(1) #1 {
body:
  %addr = getelementptr inbounds nuw i8, ptr %io, i32 8
  %addr2 = load i64, ptr %addr, align 8
  %cmpi.not = icmp eq i64 %addr2, 0
  br i1 %cmpi.not, label %if_cont, label %if_then

if_then:                                          ; preds = %body
  %0 = tail call addrspace(1) i32 @iounmap(i64 %addr2)
  %io_size8 = load i32, ptr %io, align 4
  %1 = tail call addrspace(1) i32 @mem_region_cleanup(ptr nonnull %io, i32 %io_size8)
  br label %if_cont

if_cont:                                          ; preds = %if_then, %body
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
