; ModuleID = 'angha-ll-stm32f1/extr_if_atse.c_pxx_read_2.ll'
source_filename = "out/extr_if_atse.c_pxx_read_2.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@conststr = private unnamed_addr constant [42 x i8] c"[%s:%d] %s R %s 0x%08x (0x%08jx) = 0x%04x\0A"
@conststr.1 = private unnamed_addr constant [12 x i8] c"atse_mem_res"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"atse_softc:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @DPRINTF(ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32 zeroext, i32 zeroext, i32 zeroext, i32 zeroext) local_unnamed_addr addrspace(1) #1

declare i32 @bus_read_4(i32, i32) local_unnamed_addr addrspace(1) #1

declare i32 @le32toh(i32) local_unnamed_addr addrspace(1) #1

define range(i32 0, 65536) i32 @pxx_read_2(ptr readonly captures(none) %sc, i32 %bmcr, i32 %reg, ptr %f, i32 %l, ptr %s, i32 zeroext %f.size, i32 zeroext %s.size) local_unnamed_addr addrspace(1) #1 {
body:
  %atse_mem_res9 = load i32, ptr %sc, align 4
  %binop = add i32 %reg, %bmcr
  %binop12 = shl i32 %binop, 2
  %0 = tail call addrspace(1) i32 @bus_read_4(i32 %atse_mem_res9, i32 %binop12)
  %1 = tail call addrspace(1) i32 @le32toh(i32 %0)
  %binop14 = and i32 %1, 65535
  %2 = tail call addrspace(1) i32 @DPRINTF(ptr nonnull @conststr, ptr %f, i32 %l, ptr %s, ptr nonnull @conststr.1, i32 %reg, i32 %binop12, i32 %binop14, i32 zeroext 42, i32 zeroext %f.size, i32 zeroext %s.size, i32 zeroext 12)
  ret i32 %binop14
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
