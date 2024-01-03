import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:price_s_application2/presentation/chat_support_screen/models/chat_support_model.dart';
part 'chat_support_event.dart';
part 'chat_support_state.dart';

/// A bloc that manages the state of a ChatSupport according to the event that is dispatched to it.
class ChatSupportBloc extends Bloc<ChatSupportEvent, ChatSupportState> {
  ChatSupportBloc(ChatSupportState initialState) : super(initialState) {
    on<ChatSupportInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ChatSupportInitialEvent event,
    Emitter<ChatSupportState> emit,
  ) async {
    emit(state.copyWith(
      messageController: TextEditingController(),
    ));
  }
}
