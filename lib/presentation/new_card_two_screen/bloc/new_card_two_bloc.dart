import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/creditcard1_item_model.dart';
import 'package:price_s_application2/presentation/new_card_two_screen/models/new_card_two_model.dart';
part 'new_card_two_event.dart';
part 'new_card_two_state.dart';

/// A bloc that manages the state of a NewCardTwo according to the event that is dispatched to it.
class NewCardTwoBloc extends Bloc<NewCardTwoEvent, NewCardTwoState> {
  NewCardTwoBloc(NewCardTwoState initialState) : super(initialState) {
    on<NewCardTwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    NewCardTwoInitialEvent event,
    Emitter<NewCardTwoState> emit,
  ) async {
    emit(state.copyWith(
        newCardTwoModelObj: state.newCardTwoModelObj?.copyWith(
      creditcard1ItemList: fillCreditcard1ItemList(),
    )));
  }

  List<Creditcard1ItemModel> fillCreditcard1ItemList() {
    return [
      Creditcard1ItemModel(
          cardImage1: ImageConstant.imgCard,
          shapeImage: ImageConstant.imgShape14x13,
          image: ImageConstant.imgImage47,
          image1: ImageConstant.imgShape35x35,
          cardNumberText1: "5412",
          cardNumberText2: "3632 ",
          cardNumberText3: "7283",
          cardNumberText4: "7284",
          cardholderNameLabel: "CARDHOLDER NAME",
          cardholderNameText: "Sunie Pham",
          validThruText: "VALID THRU",
          validThruLabel: "03/23")
    ];
  }
}
