// ignore_for_file: must_be_immutable

part of 'chat_support_bloc.dart';

/// Represents the state of ChatSupport in the application.
class ChatSupportState extends Equatable {
  ChatSupportState({
    this.messageController,
    this.chatSupportModelObj,
  });

  TextEditingController? messageController;

  ChatSupportModel? chatSupportModelObj;

  @override
  List<Object?> get props => [
        messageController,
        chatSupportModelObj,
      ];
  ChatSupportState copyWith({
    TextEditingController? messageController,
    ChatSupportModel? chatSupportModelObj,
  }) {
    return ChatSupportState(
      messageController: messageController ?? this.messageController,
      chatSupportModelObj: chatSupportModelObj ?? this.chatSupportModelObj,
    );
  }
}
