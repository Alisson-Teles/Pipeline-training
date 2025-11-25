; ModuleID = 'angha-ll-stm32f1/extr_hns_roce_hem.c_hem_list_free_item.ll'
source_filename = "out/extr_hns_roce_hem.c_hem_list_free_item.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@BA_BYTE_LEN = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"roce_hem_item:init"(ptr writeonly captures(none) initializes((0, 12)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  %gepaddr = getelementptr inbounds nuw i8, ptr %_this, i32 8
  store i32 0, ptr %gepaddr, align 4
  store i32 0, ptr %_this, align 4
  %gepdma_addr = getelementptr inbounds nuw i8, ptr %_this, i32 4
  store i32 0, ptr %gepdma_addr, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"hns_roce_dev:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @dma_free_coherent(i32, i32, i32, i32) local_unnamed_addr addrspace(1) #1

declare i32 @kfree(ptr) local_unnamed_addr addrspace(1) #1

define void @hem_list_free_item(ptr readonly captures(none) %hr_dev, ptr %hem, i32 %exist_bt) local_unnamed_addr addrspace(1) #1 {
body:
  %cmpi.not = icmp eq i32 %exist_bt, 0
  br i1 %cmpi.not, label %if_cont, label %if_then

if_then:                                          ; preds = %body
  %dev5 = load i32, ptr %hr_dev, align 4
  %count7 = load i32, ptr %hem, align 4
  %BA_BYTE_LEN = load i32, ptr @BA_BYTE_LEN, align 4
  %binop = mul i32 %BA_BYTE_LEN, %count7
  %addr = getelementptr inbounds nuw i8, ptr %hem, i32 8
  %addr9 = load i32, ptr %addr, align 4
  %dma_addr = getelementptr inbounds nuw i8, ptr %hem, i32 4
  %dma_addr11 = load i32, ptr %dma_addr, align 4
  %0 = tail call addrspace(1) i32 @dma_free_coherent(i32 %dev5, i32 %binop, i32 %addr9, i32 %dma_addr11)
  br label %if_cont

if_cont:                                          ; preds = %if_then, %body
  %1 = tail call addrspace(1) i32 @kfree(ptr %hem)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
