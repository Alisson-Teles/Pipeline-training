; ModuleID = 'angha-ll-stm32f1/extr_pt.c_set_current_access_from_decl.ll'
source_filename = "out/extr_pt.c_set_current_access_from_decl.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@access_private_node = local_unnamed_addr global i32 0
@access_protected_node = local_unnamed_addr global i32 0
@access_public_node = local_unnamed_addr global i32 0
@current_access_specifier = local_unnamed_addr global i32 0

declare i64 @TREE_PRIVATE(i32) local_unnamed_addr addrspace(1) #0

declare i64 @TREE_PROTECTED(i32) local_unnamed_addr addrspace(1) #0

define void @set_current_access_from_decl(i32 %decl) local_unnamed_addr addrspace(1) #0 {
body:
  %0 = tail call addrspace(1) i64 @TREE_PRIVATE(i32 %decl)
  %cmpi.not = icmp eq i64 %0, 0
  br i1 %cmpi.not, label %if_else, label %if_cont7

if_else:                                          ; preds = %body
  %1 = tail call addrspace(1) i64 @TREE_PROTECTED(i32 %decl)
  %cmpi4.not = icmp eq i64 %1, 0
  %access_public_node.access_protected_node = select i1 %cmpi4.not, ptr @access_public_node, ptr @access_protected_node
  br label %if_cont7

if_cont7:                                         ; preds = %if_else, %body
  %storemerge8.in = phi ptr [ %access_public_node.access_protected_node, %if_else ], [ @access_private_node, %body ]
  %storemerge8 = load i32, ptr %storemerge8.in, align 4
  store i32 %storemerge8, ptr @current_access_specifier, align 4
  ret void
}

attributes #0 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
