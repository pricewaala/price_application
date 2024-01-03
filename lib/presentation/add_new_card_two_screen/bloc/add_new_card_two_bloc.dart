import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:price_s_application2/presentation/add_new_card_two_screen/models/add_new_card_two_model.dart';
part 'add_new_card_two_event.dart';
part 'add_new_card_two_state.dart';

/// A bloc that manages the state of a AddNewCardTwo according to the event that is dispatched to it.
class AddNewCardTwoBloc extends Bloc<AddNewCardTwoEvent, AddNewCardTwoState> {
  AddNewCardTwoBloc(AddNewCardTwoState initialState) : super(initialState) {
    on<AddNewCardTwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    AddNewCardTwoInitialEvent event,
    Emitter<AddNewCardTwoState> emit,
  ) async {
    emit(state.copyWith(
      cardNumberController: TextEditingController(),
      nameController: TextEditingController(),
      cvvController: TextEditingController(),
    ));
  }
}
