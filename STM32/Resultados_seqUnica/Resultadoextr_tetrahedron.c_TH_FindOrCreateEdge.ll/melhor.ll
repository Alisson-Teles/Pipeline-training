; ModuleID = 'angha-ll-stm32f1/extr_tetrahedron.c_TH_FindOrCreateEdge.ll'
source_filename = "out/extr_tetrahedron.c_TH_FindOrCreateEdge.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

declare i32 @TH_CreateEdge(i32, i32) local_unnamed_addr addrspace(1) #0

declare i32 @TH_FindEdge(i32, i32) local_unnamed_addr addrspace(1) #0

define i32 @TH_FindOrCreateEdge(i32 %v1, i32 %v2) local_unnamed_addr addrspace(1) #0 {
body:
  %0 = tail call addrspace(1) i32 @TH_FindEdge(i32 %v1, i32 %v2)
  %cmpi = icmp eq i32 %0, 0
  br i1 %cmpi, label %if_then, label %if_cont

if_then:                                          ; preds = %body
  %1 = tail call addrspace(1) i32 @TH_CreateEdge(i32 %v1, i32 %v2)
  br label %if_cont

if_cont:                                          ; preds = %if_then, %body
  %edgenum.0 = phi i32 [ %1, %if_then ], [ %0, %body ]
  ret i32 %edgenum.0
}

attributes #0 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
