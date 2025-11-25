; ModuleID = 'angha-ll-stm32f1/extr_mgmtShell.spec.c_mgmtProcessDropDnodeMsg.ll'
source_filename = "out/extr_mgmtShell.spec.c_mgmtProcessDropDnodeMsg.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@TSDB_CODE_OPS_NOT_SUPPORT = local_unnamed_addr global i32 0
@TSDB_MSG_TYPE_DROP_PNODE_RSP = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"TYPE_3__:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @taosSendSimpleRsp(i32, i32, i32) local_unnamed_addr addrspace(1) #1

define i32 @mgmtProcessDropDnodeMsg(ptr readnone captures(none) %pMsg, i32 %msgLen, ptr readonly captures(none) %pConn, i32 zeroext %pMsg.size) local_unnamed_addr addrspace(1) #1 {
body:
  %thandle5 = load i32, ptr %pConn, align 4
  %TSDB_MSG_TYPE_DROP_PNODE_RSP = load i32, ptr @TSDB_MSG_TYPE_DROP_PNODE_RSP, align 4
  %TSDB_CODE_OPS_NOT_SUPPORT = load i32, ptr @TSDB_CODE_OPS_NOT_SUPPORT, align 4
  %0 = tail call addrspace(1) i32 @taosSendSimpleRsp(i32 %thandle5, i32 %TSDB_MSG_TYPE_DROP_PNODE_RSP, i32 %TSDB_CODE_OPS_NOT_SUPPORT)
  ret i32 %0
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
