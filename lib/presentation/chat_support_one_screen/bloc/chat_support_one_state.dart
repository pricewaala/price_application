// ignore_for_file: must_be_immutable

part of 'chat_support_one_bloc.dart';

/// Represents the state of ChatSupportOne in the application.
class ChatSupportOneState extends Equatable {
  ChatSupportOneState({
    this.messageController,
    this.chatSupportOneModelObj,
  });

  TextEditingController? messageController;

  ChatSupportOneModel? chatSupportOneModelObj;

  @override
  List<Object?> get props => [
        messageController,
        chatSupportOneModelObj,
      ];
  ChatSupportOneState copyWith({
    TextEditingController? messageController,
    ChatSupportOneModel? chatSupportOneModelObj,
  }) {
    return ChatSupportOneState(
      messageController: messageController ?? this.messageController,
      chatSupportOneModelObj:
          chatSupportOneModelObj ?? this.chatSupportOneModelObj,
    );
  }
}
