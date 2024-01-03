// ignore_for_file: must_be_immutable

part of 'chat_support_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ChatSupportTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ChatSupportTwoEvent extends Equatable {}

/// Event that is dispatched when the ChatSupportTwo widget is first created.
class ChatSupportTwoInitialEvent extends ChatSupportTwoEvent {
  @override
  List<Object?> get props => [];
}
