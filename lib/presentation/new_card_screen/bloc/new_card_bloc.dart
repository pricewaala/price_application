import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/creditcard_item_model.dart';
import 'package:price_s_application2/presentation/new_card_screen/models/new_card_model.dart';
part 'new_card_event.dart';
part 'new_card_state.dart';

/// A bloc that manages the state of a NewCard according to the event that is dispatched to it.
class NewCardBloc extends Bloc<NewCardEvent, NewCardState> {
  NewCardBloc(NewCardState initialState) : super(initialState) {
    on<NewCardInitialEvent>(_onInitialize);
  }

  _onInitialize(
    NewCardInitialEvent event,
    Emitter<NewCardState> emit,
  ) async {
    emit(state.copyWith(
        newCardModelObj: state.newCardModelObj?.copyWith(
      creditcardItemList: fillCreditcardItemList(),
    )));
  }

  List<CreditcardItemModel> fillCreditcardItemList() {
    return [
      CreditcardItemModel(
          image1: ImageConstant.imgCard,
          shapeImage: ImageConstant.imgShape14x13,
          image4: ImageConstant.imgImage47,
          image5: ImageConstant.imgShape35x35,
          cardNumberText1: "5412",
          cardNumberText2: "3632 ",
          cardNumberText3: "7283",
          cardNumberText4: "7284",
          cardholderNameText1: "CARDHOLDER NAME",
          cardholderNameTextValue: "Sunie Pham",
          validThruTextValue: "VALID THRU",
          validThruText: "03/23")
    ];
  }
}
