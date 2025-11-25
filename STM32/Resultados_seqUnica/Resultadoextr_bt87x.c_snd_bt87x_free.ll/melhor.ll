; ModuleID = 'angha-ll-stm32f1/extr_bt87x.c_snd_bt87x_free.ll'
source_filename = "out/extr_bt87x.c_snd_bt87x_free.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"snd_bt87x:init"(ptr writeonly captures(none) initializes((0, 12), (16, 24)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i64 0, ptr %_this, align 8
  %gepmmio = getelementptr inbounds nuw i8, ptr %_this, i32 16
  store i64 0, ptr %gepmmio, align 8
  %geppci = getelementptr inbounds nuw i8, ptr %_this, i32 8
  store i32 0, ptr %geppci, align 4
  ret void
}

declare i32 @free_irq(i64, ptr) local_unnamed_addr addrspace(1) #1

declare i32 @iounmap(i64) local_unnamed_addr addrspace(1) #1

declare i32 @kfree(ptr) local_unnamed_addr addrspace(1) #1

declare i32 @pci_disable_device(i32) local_unnamed_addr addrspace(1) #1

declare i32 @pci_release_regions(i32) local_unnamed_addr addrspace(1) #1

declare i32 @snd_bt87x_stop(ptr) local_unnamed_addr addrspace(1) #1

define noundef i32 @snd_bt87x_free(ptr %chip) local_unnamed_addr addrspace(1) #1 {
body:
  %mmio = getelementptr inbounds nuw i8, ptr %chip, i32 16
  %mmio2 = load i64, ptr %mmio, align 8
  %cmpi.not = icmp eq i64 %mmio2, 0
  br i1 %cmpi.not, label %if_cont, label %if_then

if_then:                                          ; preds = %body
  %0 = tail call addrspace(1) i32 @snd_bt87x_stop(ptr %chip)
  br label %if_cont

if_cont:                                          ; preds = %if_then, %body
  %irq5 = load i64, ptr %chip, align 8
  %cmpi6 = icmp sgt i64 %irq5, -1
  br i1 %cmpi6, label %if_then7, label %if_cont13

if_then7:                                         ; preds = %if_cont
  %1 = tail call addrspace(1) i32 @free_irq(i64 %irq5, ptr nonnull %chip)
  br label %if_cont13

if_cont13:                                        ; preds = %if_then7, %if_cont
  %mmio16 = load i64, ptr %mmio, align 8
  %2 = tail call addrspace(1) i32 @iounmap(i64 %mmio16)
  %pci = getelementptr inbounds nuw i8, ptr %chip, i32 8
  %pci18 = load i32, ptr %pci, align 4
  %3 = tail call addrspace(1) i32 @pci_release_regions(i32 %pci18)
  %pci21 = load i32, ptr %pci, align 4
  %4 = tail call addrspace(1) i32 @pci_disable_device(i32 %pci21)
  %5 = tail call addrspace(1) i32 @kfree(ptr nonnull %chip)
  ret i32 0
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
