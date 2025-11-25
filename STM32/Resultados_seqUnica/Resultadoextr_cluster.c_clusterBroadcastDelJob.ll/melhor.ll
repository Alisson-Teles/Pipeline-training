; ModuleID = 'angha-ll-stm32f1/extr_cluster.c_clusterBroadcastDelJob.ll'
source_filename = "out/extr_cluster.c_clusterBroadcastDelJob.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@CLUSTERMSG_NOFLAGS = local_unnamed_addr global i32 0
@CLUSTERMSG_TYPE_DELJOB = local_unnamed_addr global i32 0
@JOB_ID_LEN = local_unnamed_addr global i32 0
@LL_VERBOSE = local_unnamed_addr global i32 0
@conststr = private unnamed_addr constant [18 x i8] c"BCAST DELJOB: %.*s"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"TYPE_3__:init"(ptr writeonly captures(none) initializes((0, 8)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  %gepnodes_delivered = getelementptr inbounds nuw i8, ptr %_this, i32 4
  store i32 0, ptr %gepnodes_delivered, align 4
  ret void
}

declare i32 @clusterBroadcastJobIDMessage(i32, i32, i32, i32, i32) local_unnamed_addr addrspace(1) #1

declare i32 @serverLog(i32, ptr, i32, i32, i32 zeroext) local_unnamed_addr addrspace(1) #1

define void @clusterBroadcastDelJob(ptr readonly captures(none) %j) local_unnamed_addr addrspace(1) #1 {
body:
  %LL_VERBOSE = load i32, ptr @LL_VERBOSE, align 4
  %JOB_ID_LEN = load i32, ptr @JOB_ID_LEN, align 4
  %id2 = load i32, ptr %j, align 4
  %0 = tail call addrspace(1) i32 @serverLog(i32 %LL_VERBOSE, ptr nonnull @conststr, i32 %JOB_ID_LEN, i32 %id2, i32 zeroext 18)
  %nodes_delivered = getelementptr inbounds nuw i8, ptr %j, i32 4
  %nodes_delivered4 = load i32, ptr %nodes_delivered, align 4
  %id7 = load i32, ptr %j, align 4
  %CLUSTERMSG_TYPE_DELJOB = load i32, ptr @CLUSTERMSG_TYPE_DELJOB, align 4
  %CLUSTERMSG_NOFLAGS = load i32, ptr @CLUSTERMSG_NOFLAGS, align 4
  %1 = tail call addrspace(1) i32 @clusterBroadcastJobIDMessage(i32 %nodes_delivered4, i32 %id7, i32 %CLUSTERMSG_TYPE_DELJOB, i32 0, i32 %CLUSTERMSG_NOFLAGS)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
