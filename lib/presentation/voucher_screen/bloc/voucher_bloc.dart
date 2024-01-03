import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/userprofile3_item_model.dart';
import 'package:price_s_application2/presentation/voucher_screen/models/voucher_model.dart';
part 'voucher_event.dart';
part 'voucher_state.dart';

/// A bloc that manages the state of a Voucher according to the event that is dispatched to it.
class VoucherBloc extends Bloc<VoucherEvent, VoucherState> {
  VoucherBloc(VoucherState initialState) : super(initialState) {
    on<VoucherInitialEvent>(_onInitialize);
  }

  _onInitialize(
    VoucherInitialEvent event,
    Emitter<VoucherState> emit,
  ) async {
    emit(state.copyWith(
        voucherModelObj: state.voucherModelObj?.copyWith(
      userprofile3ItemList: fillUserprofile3ItemList(),
    )));
  }

  List<Userprofile3ItemModel> fillUserprofile3ItemList() {
    return [
      Userprofile3ItemModel(
          blackFridayText: "Black Friday",
          saleOffText: "Sale off 50%",
          codeText: "Code: fridaysale",
          expText: "Exp.",
          twentyText: "20",
          decText: "Dec"),
      Userprofile3ItemModel(
          blackFridayText: "Holiday Sale",
          saleOffText: "Sale off 30%",
          codeText: "Code: holiday30",
          expText: "Exp.",
          twentyText: "22",
          decText: "Dec"),
      Userprofile3ItemModel(
          blackFridayText: "First order",
          saleOffText: "20% off your first order",
          codeText: "Code: welcome   ",
          expText: "Exp.",
          twentyText: "28",
          decText: "Dec")
    ];
  }
}
