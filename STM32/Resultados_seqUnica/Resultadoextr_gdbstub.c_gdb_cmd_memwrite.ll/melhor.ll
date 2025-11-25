; ModuleID = 'angha-ll-stm32f1/extr_gdbstub.c_gdb_cmd_memwrite.ll'
source_filename = "out/extr_gdbstub.c_gdb_cmd_memwrite.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@remcom_out_buffer = local_unnamed_addr global i32 0
@conststr = private unnamed_addr constant [2 x i8] c"OK"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"kgdb_state:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @error_packet(i32, i32) local_unnamed_addr addrspace(1) #1

declare i32 @strcpy(i32, ptr, i32 zeroext) local_unnamed_addr addrspace(1) #1

declare i32 @write_mem_msg(i32) local_unnamed_addr addrspace(1) #1

define void @gdb_cmd_memwrite(ptr readnone captures(none) %ks) local_unnamed_addr addrspace(1) #1 {
body:
  %0 = tail call addrspace(1) i32 @write_mem_msg(i32 0)
  %cmpi.not = icmp eq i32 %0, 0
  %remcom_out_buffer4 = load i32, ptr @remcom_out_buffer, align 4
  br i1 %cmpi.not, label %if_else, label %if_then

if_then:                                          ; preds = %body
  %1 = tail call addrspace(1) i32 @error_packet(i32 %remcom_out_buffer4, i32 %0)
  br label %if_cont

if_else:                                          ; preds = %body
  %2 = tail call addrspace(1) i32 @strcpy(i32 %remcom_out_buffer4, ptr nonnull @conststr, i32 zeroext 2)
  br label %if_cont

if_cont:                                          ; preds = %if_else, %if_then
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
