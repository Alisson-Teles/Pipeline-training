; ModuleID = 'angha-ll-stm32f1/extr_pcie-octeon.c_cvmx_pcie_config_write32.ll'
source_filename = "out/extr_pcie-octeon.c_cvmx_pcie_config_write32.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

declare i64 @__cvmx_pcie_build_config_addr(i32, i32, i32, i32, i32) local_unnamed_addr addrspace(1) #0

declare i32 @cpu_to_le32(i32) local_unnamed_addr addrspace(1) #0

declare i32 @cvmx_write64_uint32(i64, i32) local_unnamed_addr addrspace(1) #0

define void @cvmx_pcie_config_write32(i32 %pcie_port, i32 %bus, i32 %dev, i32 %fn, i32 %reg, i32 %val) local_unnamed_addr addrspace(1) #0 {
body:
  %0 = tail call addrspace(1) i64 @__cvmx_pcie_build_config_addr(i32 %pcie_port, i32 %bus, i32 %dev, i32 %fn, i32 %reg)
  %cmpi.not = icmp eq i64 %0, 0
  br i1 %cmpi.not, label %if_cont, label %if_then

if_then:                                          ; preds = %body
  %1 = tail call addrspace(1) i32 @cpu_to_le32(i32 %val)
  %2 = tail call addrspace(1) i32 @cvmx_write64_uint32(i64 %0, i32 %1)
  br label %if_cont

if_cont:                                          ; preds = %if_then, %body
  ret void
}

attributes #0 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
