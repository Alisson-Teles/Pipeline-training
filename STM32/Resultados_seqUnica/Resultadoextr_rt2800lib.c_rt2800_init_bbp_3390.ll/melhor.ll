; ModuleID = 'angha-ll-stm32f1/extr_rt2800lib.c_rt2800_init_bbp_3390.ll'
source_filename = "out/extr_rt2800lib.c_rt2800_init_bbp_3390.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@REV_RT3390E = local_unnamed_addr global i32 0
@RT3390 = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"rt2x00_dev:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @rt2800_bbp_write(ptr, i32, i32) local_unnamed_addr addrspace(1) #1

declare i32 @rt2800_disable_unused_dac_adc(ptr) local_unnamed_addr addrspace(1) #1

declare i64 @rt2x00_rt_rev_gte(ptr, i32, i32) local_unnamed_addr addrspace(1) #1

define void @rt2800_init_bbp_3390(ptr %rt2x00dev) local_unnamed_addr addrspace(1) #1 {
body:
  %0 = tail call addrspace(1) i32 @rt2800_bbp_write(ptr %rt2x00dev, i32 65, i32 44)
  %1 = tail call addrspace(1) i32 @rt2800_bbp_write(ptr %rt2x00dev, i32 66, i32 56)
  %2 = tail call addrspace(1) i32 @rt2800_bbp_write(ptr %rt2x00dev, i32 69, i32 18)
  %3 = tail call addrspace(1) i32 @rt2800_bbp_write(ptr %rt2x00dev, i32 73, i32 16)
  %4 = tail call addrspace(1) i32 @rt2800_bbp_write(ptr %rt2x00dev, i32 70, i32 10)
  %5 = tail call addrspace(1) i32 @rt2800_bbp_write(ptr %rt2x00dev, i32 79, i32 19)
  %6 = tail call addrspace(1) i32 @rt2800_bbp_write(ptr %rt2x00dev, i32 80, i32 5)
  %7 = tail call addrspace(1) i32 @rt2800_bbp_write(ptr %rt2x00dev, i32 81, i32 51)
  %8 = tail call addrspace(1) i32 @rt2800_bbp_write(ptr %rt2x00dev, i32 82, i32 98)
  %9 = tail call addrspace(1) i32 @rt2800_bbp_write(ptr %rt2x00dev, i32 83, i32 106)
  %10 = tail call addrspace(1) i32 @rt2800_bbp_write(ptr %rt2x00dev, i32 84, i32 153)
  %11 = tail call addrspace(1) i32 @rt2800_bbp_write(ptr %rt2x00dev, i32 86, i32 0)
  %12 = tail call addrspace(1) i32 @rt2800_bbp_write(ptr %rt2x00dev, i32 91, i32 4)
  %13 = tail call addrspace(1) i32 @rt2800_bbp_write(ptr %rt2x00dev, i32 92, i32 0)
  %RT3390 = load i32, ptr @RT3390, align 4
  %REV_RT3390E = load i32, ptr @REV_RT3390E, align 4
  %14 = tail call addrspace(1) i64 @rt2x00_rt_rev_gte(ptr %rt2x00dev, i32 %RT3390, i32 %REV_RT3390E)
  %cmpi.not = icmp eq i64 %14, 0
  %. = select i1 %cmpi.not, i32 0, i32 192
  %15 = tail call addrspace(1) i32 @rt2800_bbp_write(ptr %rt2x00dev, i32 103, i32 %.)
  %16 = tail call addrspace(1) i32 @rt2800_bbp_write(ptr %rt2x00dev, i32 105, i32 5)
  %17 = tail call addrspace(1) i32 @rt2800_bbp_write(ptr %rt2x00dev, i32 106, i32 53)
  %18 = tail call addrspace(1) i32 @rt2800_disable_unused_dac_adc(ptr %rt2x00dev)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
