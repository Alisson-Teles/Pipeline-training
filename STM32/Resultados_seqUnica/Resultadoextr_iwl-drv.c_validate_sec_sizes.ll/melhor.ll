; ModuleID = 'angha-ll-stm32f1/extr_iwl-drv.c_validate_sec_sizes.ll'
source_filename = "out/extr_iwl-drv.c_validate_sec_sizes.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@IWL_UCODE_INIT = local_unnamed_addr global i32 0
@IWL_UCODE_REGULAR = local_unnamed_addr global i32 0
@IWL_UCODE_SECTION_DATA = local_unnamed_addr global i32 0
@IWL_UCODE_SECTION_INST = local_unnamed_addr global i32 0
@conststr = private unnamed_addr constant [40 x i8] c"f/w package hdr runtime inst size = %Zd\0A"
@conststr.1 = private unnamed_addr constant [40 x i8] c"f/w package hdr runtime data size = %Zd\0A"
@conststr.2 = private unnamed_addr constant [37 x i8] c"f/w package hdr init inst size = %Zd\0A"
@conststr.3 = private unnamed_addr constant [37 x i8] c"f/w package hdr init data size = %Zd\0A"
@conststr.4 = private unnamed_addr constant [40 x i8] c"uCode instr len %Zd too large to fit in\0A"
@conststr.5 = private unnamed_addr constant [39 x i8] c"uCode data len %Zd too large to fit in\0A"
@conststr.6 = private unnamed_addr constant [45 x i8] c"uCode init instr len %Zd too large to fit in\0A"
@conststr.7 = private unnamed_addr constant [44 x i8] c"uCode init data len %Zd too large to fit in\0A"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"iwl_firmware_pieces:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"iwl_drv:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"iwl_cfg:init"(ptr writeonly captures(none) initializes((0, 16)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %_this, i8 0, i64 16, i1 false)
  ret void
}

declare i32 @IWL_DEBUG_INFO(ptr, ptr, i64, i32 zeroext) local_unnamed_addr addrspace(1) #1

declare i32 @IWL_ERR(ptr, ptr, i64, i32 zeroext) local_unnamed_addr addrspace(1) #1

declare i64 @get_sec_size(ptr, i32, i32) local_unnamed_addr addrspace(1) #1

define range(i32 -1, 1) i32 @validate_sec_sizes(ptr %drv, ptr %pieces, ptr readonly captures(none) %cfg) local_unnamed_addr addrspace(1) #1 {
body:
  %IWL_UCODE_REGULAR = load i32, ptr @IWL_UCODE_REGULAR, align 4
  %IWL_UCODE_SECTION_INST = load i32, ptr @IWL_UCODE_SECTION_INST, align 4
  %0 = tail call addrspace(1) i64 @get_sec_size(ptr %pieces, i32 %IWL_UCODE_REGULAR, i32 %IWL_UCODE_SECTION_INST)
  %1 = tail call addrspace(1) i32 @IWL_DEBUG_INFO(ptr %drv, ptr nonnull @conststr, i64 %0, i32 zeroext 40)
  %IWL_UCODE_REGULAR7 = load i32, ptr @IWL_UCODE_REGULAR, align 4
  %IWL_UCODE_SECTION_DATA = load i32, ptr @IWL_UCODE_SECTION_DATA, align 4
  %2 = tail call addrspace(1) i64 @get_sec_size(ptr %pieces, i32 %IWL_UCODE_REGULAR7, i32 %IWL_UCODE_SECTION_DATA)
  %3 = tail call addrspace(1) i32 @IWL_DEBUG_INFO(ptr %drv, ptr nonnull @conststr.1, i64 %2, i32 zeroext 40)
  %IWL_UCODE_INIT = load i32, ptr @IWL_UCODE_INIT, align 4
  %IWL_UCODE_SECTION_INST10 = load i32, ptr @IWL_UCODE_SECTION_INST, align 4
  %4 = tail call addrspace(1) i64 @get_sec_size(ptr %pieces, i32 %IWL_UCODE_INIT, i32 %IWL_UCODE_SECTION_INST10)
  %5 = tail call addrspace(1) i32 @IWL_DEBUG_INFO(ptr %drv, ptr nonnull @conststr.2, i64 %4, i32 zeroext 37)
  %IWL_UCODE_INIT13 = load i32, ptr @IWL_UCODE_INIT, align 4
  %IWL_UCODE_SECTION_DATA14 = load i32, ptr @IWL_UCODE_SECTION_DATA, align 4
  %6 = tail call addrspace(1) i64 @get_sec_size(ptr %pieces, i32 %IWL_UCODE_INIT13, i32 %IWL_UCODE_SECTION_DATA14)
  %7 = tail call addrspace(1) i32 @IWL_DEBUG_INFO(ptr %drv, ptr nonnull @conststr.3, i64 %6, i32 zeroext 37)
  %IWL_UCODE_REGULAR16 = load i32, ptr @IWL_UCODE_REGULAR, align 4
  %IWL_UCODE_SECTION_INST17 = load i32, ptr @IWL_UCODE_SECTION_INST, align 4
  %8 = tail call addrspace(1) i64 @get_sec_size(ptr %pieces, i32 %IWL_UCODE_REGULAR16, i32 %IWL_UCODE_SECTION_INST17)
  %max_inst_size19 = load i64, ptr %cfg, align 8
  %cmpi = icmp sgt i64 %8, %max_inst_size19
  %IWL_UCODE_REGULAR22 = load i32, ptr @IWL_UCODE_REGULAR, align 4
  br i1 %cmpi, label %if_then, label %if_cont

common.ret:                                       ; preds = %if_then58, %if_cont50, %if_then44, %if_then30, %if_then
  %common.ret.op = phi i32 [ -1, %if_then ], [ -1, %if_then30 ], [ -1, %if_then44 ], [ -1, %if_then58 ], [ 0, %if_cont50 ]
  ret i32 %common.ret.op

if_then:                                          ; preds = %body
  %IWL_UCODE_SECTION_INST23 = load i32, ptr @IWL_UCODE_SECTION_INST, align 4
  %9 = tail call addrspace(1) i64 @get_sec_size(ptr %pieces, i32 %IWL_UCODE_REGULAR22, i32 %IWL_UCODE_SECTION_INST23)
  %10 = tail call addrspace(1) i32 @IWL_ERR(ptr %drv, ptr nonnull @conststr.4, i64 %9, i32 zeroext 40)
  br label %common.ret

if_cont:                                          ; preds = %body
  %IWL_UCODE_SECTION_DATA26 = load i32, ptr @IWL_UCODE_SECTION_DATA, align 4
  %11 = tail call addrspace(1) i64 @get_sec_size(ptr %pieces, i32 %IWL_UCODE_REGULAR22, i32 %IWL_UCODE_SECTION_DATA26)
  %max_data_size = getelementptr inbounds nuw i8, ptr %cfg, i32 8
  %max_data_size28 = load i64, ptr %max_data_size, align 8
  %cmpi29 = icmp sgt i64 %11, %max_data_size28
  br i1 %cmpi29, label %if_then30, label %if_cont36

if_then30:                                        ; preds = %if_cont
  %IWL_UCODE_REGULAR33 = load i32, ptr @IWL_UCODE_REGULAR, align 4
  %IWL_UCODE_SECTION_DATA34 = load i32, ptr @IWL_UCODE_SECTION_DATA, align 4
  %12 = tail call addrspace(1) i64 @get_sec_size(ptr %pieces, i32 %IWL_UCODE_REGULAR33, i32 %IWL_UCODE_SECTION_DATA34)
  %13 = tail call addrspace(1) i32 @IWL_ERR(ptr %drv, ptr nonnull @conststr.5, i64 %12, i32 zeroext 39)
  br label %common.ret

if_cont36:                                        ; preds = %if_cont
  %IWL_UCODE_INIT38 = load i32, ptr @IWL_UCODE_INIT, align 4
  %IWL_UCODE_SECTION_INST39 = load i32, ptr @IWL_UCODE_SECTION_INST, align 4
  %14 = tail call addrspace(1) i64 @get_sec_size(ptr %pieces, i32 %IWL_UCODE_INIT38, i32 %IWL_UCODE_SECTION_INST39)
  %max_inst_size42 = load i64, ptr %cfg, align 8
  %cmpi43 = icmp sgt i64 %14, %max_inst_size42
  %IWL_UCODE_INIT47 = load i32, ptr @IWL_UCODE_INIT, align 4
  br i1 %cmpi43, label %if_then44, label %if_cont50

if_then44:                                        ; preds = %if_cont36
  %IWL_UCODE_SECTION_INST48 = load i32, ptr @IWL_UCODE_SECTION_INST, align 4
  %15 = tail call addrspace(1) i64 @get_sec_size(ptr %pieces, i32 %IWL_UCODE_INIT47, i32 %IWL_UCODE_SECTION_INST48)
  %16 = tail call addrspace(1) i32 @IWL_ERR(ptr %drv, ptr nonnull @conststr.6, i64 %15, i32 zeroext 45)
  br label %common.ret

if_cont50:                                        ; preds = %if_cont36
  %IWL_UCODE_SECTION_DATA53 = load i32, ptr @IWL_UCODE_SECTION_DATA, align 4
  %17 = tail call addrspace(1) i64 @get_sec_size(ptr %pieces, i32 %IWL_UCODE_INIT47, i32 %IWL_UCODE_SECTION_DATA53)
  %max_data_size56 = load i64, ptr %max_data_size, align 8
  %cmpi57 = icmp sgt i64 %17, %max_data_size56
  br i1 %cmpi57, label %if_then58, label %common.ret

if_then58:                                        ; preds = %if_cont50
  %IWL_UCODE_REGULAR61 = load i32, ptr @IWL_UCODE_REGULAR, align 4
  %IWL_UCODE_SECTION_DATA62 = load i32, ptr @IWL_UCODE_SECTION_DATA, align 4
  %18 = tail call addrspace(1) i64 @get_sec_size(ptr %pieces, i32 %IWL_UCODE_REGULAR61, i32 %IWL_UCODE_SECTION_DATA62)
  %19 = tail call addrspace(1) i32 @IWL_ERR(ptr %drv, ptr nonnull @conststr.7, i64 %18, i32 zeroext 44)
  br label %common.ret
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
