; ModuleID = 'angha-ll-stm32f1/extr_misc.c_release_input.ll'
source_filename = "out/extr_misc.c_release_input.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@EOF = local_unnamed_addr global i32 0
@stdin = local_unnamed_addr global i64 0
@conststr = private unnamed_addr constant [28 x i8] c"Fatal error reading from %s\0A"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"input_file:init"(ptr writeonly captures(none) initializes((0, 16)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %_this, i8 0, i64 16, i1 false)
  ret void
}

declare i32 @errx(i32, ptr, i32, i32 zeroext) local_unnamed_addr addrspace(1) #1

declare i32 @fclose(i64) local_unnamed_addr addrspace(1) #1

declare i64 @ferror(i64) local_unnamed_addr addrspace(1) #1

define void @release_input(ptr captures(none) initializes((8, 12)) %f) local_unnamed_addr addrspace(1) #1 {
body:
  %file2 = load i64, ptr %f, align 8
  %0 = tail call addrspace(1) i64 @ferror(i64 %file2)
  %cmpi.not = icmp eq i64 %0, 0
  br i1 %cmpi.not, label %if_cont, label %if_then

if_then:                                          ; preds = %body
  %name = getelementptr inbounds nuw i8, ptr %f, i32 12
  %name4 = load i32, ptr %name, align 4
  %1 = tail call addrspace(1) i32 @errx(i32 1, ptr nonnull @conststr, i32 %name4, i32 zeroext 28)
  br label %if_cont

if_cont:                                          ; preds = %if_then, %body
  %file7 = load i64, ptr %f, align 8
  %stdin = load i64, ptr @stdin, align 8
  %cmpi8.not = icmp eq i64 %file7, %stdin
  br i1 %cmpi8.not, label %if_cont14, label %if_then9

if_then9:                                         ; preds = %if_cont
  %2 = tail call addrspace(1) i32 @fclose(i64 %file7)
  br label %if_cont14

if_cont14:                                        ; preds = %if_then9, %if_cont
  %c = getelementptr inbounds nuw i8, ptr %f, i32 8
  %EOF = load i32, ptr @EOF, align 4
  store i32 %EOF, ptr %c, align 4
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
