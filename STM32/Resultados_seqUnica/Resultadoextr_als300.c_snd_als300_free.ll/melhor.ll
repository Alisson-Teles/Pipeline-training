; ModuleID = 'angha-ll-stm32f1/extr_als300.c_snd_als300_free.ll'
source_filename = "out/extr_als300.c_snd_als300_free.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@IRQ_DISABLE = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"snd_als300:init"(ptr writeonly captures(none) initializes((0, 12)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i64 0, ptr %_this, align 8
  %geppci = getelementptr inbounds nuw i8, ptr %_this, i32 8
  store i32 0, ptr %geppci, align 4
  ret void
}

declare i32 @free_irq(i64, ptr) local_unnamed_addr addrspace(1) #1

declare i32 @kfree(ptr) local_unnamed_addr addrspace(1) #1

declare i32 @pci_disable_device(i32) local_unnamed_addr addrspace(1) #1

declare i32 @pci_release_regions(i32) local_unnamed_addr addrspace(1) #1

declare i32 @snd_als300_set_irq_flag(ptr, i32) local_unnamed_addr addrspace(1) #1

define noundef i32 @snd_als300_free(ptr %chip) local_unnamed_addr addrspace(1) #1 {
body:
  %IRQ_DISABLE = load i32, ptr @IRQ_DISABLE, align 4
  %0 = tail call addrspace(1) i32 @snd_als300_set_irq_flag(ptr %chip, i32 %IRQ_DISABLE)
  %irq3 = load i64, ptr %chip, align 8
  %cmpi = icmp sgt i64 %irq3, -1
  br i1 %cmpi, label %if_then, label %if_cont

if_then:                                          ; preds = %body
  %1 = tail call addrspace(1) i32 @free_irq(i64 %irq3, ptr nonnull %chip)
  br label %if_cont

if_cont:                                          ; preds = %if_then, %body
  %pci = getelementptr inbounds nuw i8, ptr %chip, i32 8
  %pci9 = load i32, ptr %pci, align 4
  %2 = tail call addrspace(1) i32 @pci_release_regions(i32 %pci9)
  %pci12 = load i32, ptr %pci, align 4
  %3 = tail call addrspace(1) i32 @pci_disable_device(i32 %pci12)
  %4 = tail call addrspace(1) i32 @kfree(ptr nonnull %chip)
  ret i32 0
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
