import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/dynamicview_item_model.dart';
import 'package:price_s_application2/presentation/voucher_two_screen/models/voucher_two_model.dart';
part 'voucher_two_event.dart';
part 'voucher_two_state.dart';

/// A bloc that manages the state of a VoucherTwo according to the event that is dispatched to it.
class VoucherTwoBloc extends Bloc<VoucherTwoEvent, VoucherTwoState> {
  VoucherTwoBloc(VoucherTwoState initialState) : super(initialState) {
    on<VoucherTwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    VoucherTwoInitialEvent event,
    Emitter<VoucherTwoState> emit,
  ) async {
    emit(state.copyWith(
        voucherTwoModelObj: state.voucherTwoModelObj?.copyWith(
      dynamicviewItemList: fillDynamicviewItemList(),
    )));
  }

  List<DynamicviewItemModel> fillDynamicviewItemList() {
    return [
      DynamicviewItemModel(
          text1: "Black Friday",
          text2: "Sale off 50%",
          text3: "Code: fridaysale",
          text4: "Exp.",
          text5: "20",
          text6: "Dec"),
      DynamicviewItemModel(
          text1: "Holiday Sale",
          text2: "Sale off 30%",
          text3: "Code: holiday30",
          text4: "Exp.",
          text5: "22",
          text6: "Dec"),
      DynamicviewItemModel(
          text1: "First order",
          text2: "20% off your first order",
          text3: "Code: welcome   ",
          text4: "Exp.",
          text5: "28",
          text6: "Dec")
    ];
  }
}
