import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:price_s_application2/presentation/add_new_card_one_screen/models/add_new_card_one_model.dart';
part 'add_new_card_one_event.dart';
part 'add_new_card_one_state.dart';

/// A bloc that manages the state of a AddNewCardOne according to the event that is dispatched to it.
class AddNewCardOneBloc extends Bloc<AddNewCardOneEvent, AddNewCardOneState> {
  AddNewCardOneBloc(AddNewCardOneState initialState) : super(initialState) {
    on<AddNewCardOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    AddNewCardOneInitialEvent event,
    Emitter<AddNewCardOneState> emit,
  ) async {
    emit(state.copyWith(
      cardNumberController: TextEditingController(),
      nameController: TextEditingController(),
      cvvController: TextEditingController(),
    ));
  }
}
