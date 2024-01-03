// ignore_for_file: must_be_immutable

part of 'chat_support_two_bloc.dart';

/// Represents the state of ChatSupportTwo in the application.
class ChatSupportTwoState extends Equatable {
  ChatSupportTwoState({
    this.messageController,
    this.chatSupportTwoModelObj,
  });

  TextEditingController? messageController;

  ChatSupportTwoModel? chatSupportTwoModelObj;

  @override
  List<Object?> get props => [
        messageController,
        chatSupportTwoModelObj,
      ];
  ChatSupportTwoState copyWith({
    TextEditingController? messageController,
    ChatSupportTwoModel? chatSupportTwoModelObj,
  }) {
    return ChatSupportTwoState(
      messageController: messageController ?? this.messageController,
      chatSupportTwoModelObj:
          chatSupportTwoModelObj ?? this.chatSupportTwoModelObj,
    );
  }
}
