; ModuleID = 'angha-ll-stm32f1/extr_aes_ct.c_sub_word.ll'
source_filename = "out/extr_aes_ct.c_sub_word.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

declare i32 @br_aes_ct_bitslice_Sbox(ptr, i32 zeroext) local_unnamed_addr addrspace(1) #0

declare i32 @br_aes_ct_ortho(ptr, i32 zeroext) local_unnamed_addr addrspace(1) #0

define i32 @sub_word(i32 %x) local_unnamed_addr addrspace(1) #0 {
body:
  %q = alloca [8 x i32], align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %q, i8 0, i64 32, i1 false)
  store i32 %x, ptr %q, align 4
  %elemgep.1 = getelementptr inbounds nuw i8, ptr %q, i32 4
  store i32 %x, ptr %elemgep.1, align 4
  %elemgep.2 = getelementptr inbounds nuw i8, ptr %q, i32 8
  store i32 %x, ptr %elemgep.2, align 4
  %elemgep.3 = getelementptr inbounds nuw i8, ptr %q, i32 12
  store i32 %x, ptr %elemgep.3, align 4
  %elemgep.4 = getelementptr inbounds nuw i8, ptr %q, i32 16
  store i32 %x, ptr %elemgep.4, align 4
  %elemgep.5 = getelementptr inbounds nuw i8, ptr %q, i32 20
  store i32 %x, ptr %elemgep.5, align 4
  %elemgep.6 = getelementptr inbounds nuw i8, ptr %q, i32 24
  store i32 %x, ptr %elemgep.6, align 4
  %elemgep.7 = getelementptr inbounds nuw i8, ptr %q, i32 28
  store i32 %x, ptr %elemgep.7, align 4
  %0 = call addrspace(1) i32 @br_aes_ct_ortho(ptr nonnull %q, i32 zeroext 8)
  %1 = call addrspace(1) i32 @br_aes_ct_bitslice_Sbox(ptr nonnull %q, i32 zeroext 8)
  %2 = call addrspace(1) i32 @br_aes_ct_ortho(ptr nonnull %q, i32 zeroext 8)
  %deref = load i32, ptr %q, align 4
  ret i32 %deref
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

attributes #0 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
