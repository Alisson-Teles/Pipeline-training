; ModuleID = 'angha-ll-stm32f1/extr_nfs4recover.c_nfsd4_init_cld_pipe.ll'
source_filename = "out/extr_nfs4recover.c_nfsd4_init_cld_pipe.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@conststr = private unnamed_addr constant [52 x i8] c"NFSD: Using old nfsdcld client tracking operations.\0A"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"net:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @__nfsd4_init_cld_pipe(ptr) local_unnamed_addr addrspace(1) #1

declare i32 @printk(ptr, i32 zeroext) local_unnamed_addr addrspace(1) #1

define i32 @nfsd4_init_cld_pipe(ptr %net) local_unnamed_addr addrspace(1) #1 {
body:
  %0 = tail call addrspace(1) i32 @__nfsd4_init_cld_pipe(ptr %net)
  %cmpi = icmp eq i32 %0, 0
  br i1 %cmpi, label %if_then, label %if_cont

if_then:                                          ; preds = %body
  %1 = tail call addrspace(1) i32 @printk(ptr nonnull @conststr, i32 zeroext 52)
  br label %if_cont

if_cont:                                          ; preds = %if_then, %body
  ret i32 %0
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
