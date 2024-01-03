import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/creditcard2_item_model.dart';
import 'package:price_s_application2/presentation/new_card_one_screen/models/new_card_one_model.dart';
part 'new_card_one_event.dart';
part 'new_card_one_state.dart';

/// A bloc that manages the state of a NewCardOne according to the event that is dispatched to it.
class NewCardOneBloc extends Bloc<NewCardOneEvent, NewCardOneState> {
  NewCardOneBloc(NewCardOneState initialState) : super(initialState) {
    on<NewCardOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    NewCardOneInitialEvent event,
    Emitter<NewCardOneState> emit,
  ) async {
    emit(state.copyWith(
        newCardOneModelObj: state.newCardOneModelObj?.copyWith(
      creditcard2ItemList: fillCreditcard2ItemList(),
    )));
  }

  List<Creditcard2ItemModel> fillCreditcard2ItemList() {
    return [
      Creditcard2ItemModel(
          cardImage: ImageConstant.imgCard,
          cardImage1: ImageConstant.imgShape14x13,
          image: ImageConstant.imgImage47,
          threeThousandSixHundredThirtyTwo: ImageConstant.imgShape35x35,
          cardNumber: "5412",
          cardNumber1: "3632 ",
          cardNumber2: "7283",
          cardNumber3: "7284",
          price: "CARDHOLDER NAME",
          cardHolderName: "Sunie Pham",
          validThru: "VALID THRU",
          validThru1: "03/23")
    ];
  }
}
