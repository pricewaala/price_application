import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:price_s_application2/presentation/chat_support_one_screen/models/chat_support_one_model.dart';
part 'chat_support_one_event.dart';
part 'chat_support_one_state.dart';

/// A bloc that manages the state of a ChatSupportOne according to the event that is dispatched to it.
class ChatSupportOneBloc
    extends Bloc<ChatSupportOneEvent, ChatSupportOneState> {
  ChatSupportOneBloc(ChatSupportOneState initialState) : super(initialState) {
    on<ChatSupportOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ChatSupportOneInitialEvent event,
    Emitter<ChatSupportOneState> emit,
  ) async {
    emit(state.copyWith(
      messageController: TextEditingController(),
    ));
  }
}
