import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/dynamicview1_item_model.dart';
import 'package:price_s_application2/presentation/voucher_one_screen/models/voucher_one_model.dart';
part 'voucher_one_event.dart';
part 'voucher_one_state.dart';

/// A bloc that manages the state of a VoucherOne according to the event that is dispatched to it.
class VoucherOneBloc extends Bloc<VoucherOneEvent, VoucherOneState> {
  VoucherOneBloc(VoucherOneState initialState) : super(initialState) {
    on<VoucherOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    VoucherOneInitialEvent event,
    Emitter<VoucherOneState> emit,
  ) async {
    emit(state.copyWith(
        voucherOneModelObj: state.voucherOneModelObj?.copyWith(
      dynamicview1ItemList: fillDynamicview1ItemList(),
    )));
  }

  List<Dynamicview1ItemModel> fillDynamicview1ItemList() {
    return [
      Dynamicview1ItemModel(
          text1: "Black Friday",
          text2: "Sale off 50%",
          text3: "Code: fridaysale",
          text4: "Exp.",
          text5: "20",
          text6: "Dec"),
      Dynamicview1ItemModel(
          text1: "Holiday Sale",
          text2: "Sale off 30%",
          text3: "Code: holiday30",
          text4: "Exp.",
          text5: "22",
          text6: "Dec"),
      Dynamicview1ItemModel(
          text1: "First order",
          text2: "20% off your first order",
          text3: "Code: welcome   ",
          text4: "Exp.",
          text5: "28",
          text6: "Dec")
    ];
  }
}
