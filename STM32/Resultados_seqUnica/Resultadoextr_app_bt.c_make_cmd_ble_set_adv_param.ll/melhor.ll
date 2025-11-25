; ModuleID = 'angha-ll-stm32f1/extr_app_bt.c_make_cmd_ble_set_adv_param.ll'
source_filename = "out/extr_app_bt.c_make_cmd_ble_set_adv_param.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@H4_TYPE_COMMAND = local_unnamed_addr global i64 0
@HCIC_PARAM_SIZE_BLE_WRITE_ADV_PARAMS = local_unnamed_addr global i64 0
@HCI_BLE_WRITE_ADV_PARAMS = local_unnamed_addr global i64 0
@HCI_H4_CMD_PREAMBLE_SIZE = local_unnamed_addr global i64 0

declare i32 @BDADDR_TO_STREAM(i64, i32) local_unnamed_addr addrspace(1) #0

declare i32 @UINT16_TO_STREAM(i64, i64) local_unnamed_addr addrspace(1) #0

declare i32 @UINT8_TO_STREAM(i64, i64) local_unnamed_addr addrspace(1) #0

define i64 @make_cmd_ble_set_adv_param(i64 %buf, i64 %adv_int_min, i64 %adv_int_max, i64 %adv_type, i64 %addr_type_own, i64 %addr_type_dir, i32 %direct_bda, i64 %channel_map, i64 %adv_filter_policy) local_unnamed_addr addrspace(1) #0 {
body:
  %H4_TYPE_COMMAND = load i64, ptr @H4_TYPE_COMMAND, align 8
  %0 = tail call addrspace(1) i32 @UINT8_TO_STREAM(i64 %buf, i64 %H4_TYPE_COMMAND)
  %HCI_BLE_WRITE_ADV_PARAMS = load i64, ptr @HCI_BLE_WRITE_ADV_PARAMS, align 8
  %1 = tail call addrspace(1) i32 @UINT16_TO_STREAM(i64 %buf, i64 %HCI_BLE_WRITE_ADV_PARAMS)
  %HCIC_PARAM_SIZE_BLE_WRITE_ADV_PARAMS = load i64, ptr @HCIC_PARAM_SIZE_BLE_WRITE_ADV_PARAMS, align 8
  %2 = tail call addrspace(1) i32 @UINT8_TO_STREAM(i64 %buf, i64 %HCIC_PARAM_SIZE_BLE_WRITE_ADV_PARAMS)
  %3 = tail call addrspace(1) i32 @UINT16_TO_STREAM(i64 %buf, i64 %adv_int_min)
  %4 = tail call addrspace(1) i32 @UINT16_TO_STREAM(i64 %buf, i64 %adv_int_max)
  %5 = tail call addrspace(1) i32 @UINT8_TO_STREAM(i64 %buf, i64 %adv_type)
  %6 = tail call addrspace(1) i32 @UINT8_TO_STREAM(i64 %buf, i64 %addr_type_own)
  %7 = tail call addrspace(1) i32 @UINT8_TO_STREAM(i64 %buf, i64 %addr_type_dir)
  %8 = tail call addrspace(1) i32 @BDADDR_TO_STREAM(i64 %buf, i32 %direct_bda)
  %9 = tail call addrspace(1) i32 @UINT8_TO_STREAM(i64 %buf, i64 %channel_map)
  %10 = tail call addrspace(1) i32 @UINT8_TO_STREAM(i64 %buf, i64 %adv_filter_policy)
  %HCI_H4_CMD_PREAMBLE_SIZE = load i64, ptr @HCI_H4_CMD_PREAMBLE_SIZE, align 8
  %HCIC_PARAM_SIZE_BLE_WRITE_ADV_PARAMS29 = load i64, ptr @HCIC_PARAM_SIZE_BLE_WRITE_ADV_PARAMS, align 8
  %binop = add i64 %HCIC_PARAM_SIZE_BLE_WRITE_ADV_PARAMS29, %HCI_H4_CMD_PREAMBLE_SIZE
  ret i64 %binop
}

attributes #0 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
