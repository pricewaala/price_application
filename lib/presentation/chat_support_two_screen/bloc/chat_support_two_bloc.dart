import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:price_s_application2/presentation/chat_support_two_screen/models/chat_support_two_model.dart';
part 'chat_support_two_event.dart';
part 'chat_support_two_state.dart';

/// A bloc that manages the state of a ChatSupportTwo according to the event that is dispatched to it.
class ChatSupportTwoBloc
    extends Bloc<ChatSupportTwoEvent, ChatSupportTwoState> {
  ChatSupportTwoBloc(ChatSupportTwoState initialState) : super(initialState) {
    on<ChatSupportTwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ChatSupportTwoInitialEvent event,
    Emitter<ChatSupportTwoState> emit,
  ) async {
    emit(state.copyWith(
      messageController: TextEditingController(),
    ));
  }
}
