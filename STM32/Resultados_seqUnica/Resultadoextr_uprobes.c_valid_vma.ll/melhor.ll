; ModuleID = 'angha-ll-stm32f1/extr_uprobes.c_valid_vma.ll'
source_filename = "out/extr_uprobes.c_valid_vma.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@VM_HUGETLB = local_unnamed_addr global i32 0
@VM_MAYEXEC = local_unnamed_addr global i32 0
@VM_MAYSHARE = local_unnamed_addr global i32 0
@VM_WRITE = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"vm_area_struct:init"(ptr writeonly captures(none) initializes((0, 4), (8, 16)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  %gepvm_file = getelementptr inbounds nuw i8, ptr %_this, i32 8
  store i64 0, ptr %gepvm_file, align 8
  store i32 0, ptr %_this, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none)
define range(i32 0, 2) i32 @valid_vma(ptr readonly captures(none) %vma, i32 %is_register) local_unnamed_addr addrspace(1) #1 {
body:
  %vm_file = getelementptr inbounds nuw i8, ptr %vma, i32 8
  %vm_file6 = load i64, ptr %vm_file, align 8
  %cmpi7.not = icmp eq i64 %vm_file6, 0
  br i1 %cmpi7.not, label %phiblock, label %fullev

fullev:                                           ; preds = %body
  %cmpi.not = icmp eq i32 %is_register, 0
  %VM_MAYEXEC = load i32, ptr @VM_MAYEXEC, align 4
  %VM_HUGETLB = load i32, ptr @VM_HUGETLB, align 4
  %VM_MAYSHARE = load i32, ptr @VM_MAYSHARE, align 4
  %VM_WRITE = load i32, ptr @VM_WRITE, align 4
  %binop5 = select i1 %cmpi.not, i32 0, i32 %VM_WRITE
  %0 = or i32 %VM_HUGETLB, %VM_MAYSHARE
  %1 = or i32 %0, %binop5
  %flags.0 = or i32 %1, %VM_MAYEXEC
  %vm_flags9 = load i32, ptr %vma, align 4
  %binop11 = and i32 %flags.0, %vm_flags9
  %cmpi13 = icmp eq i32 %binop11, %VM_MAYEXEC
  %2 = zext i1 %cmpi13 to i32
  br label %phiblock

phiblock:                                         ; preds = %fullev, %body
  %phi = phi i32 [ 0, %body ], [ %2, %fullev ]
  ret i32 %phi
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
