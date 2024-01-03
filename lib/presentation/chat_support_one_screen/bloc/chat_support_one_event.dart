// ignore_for_file: must_be_immutable

part of 'chat_support_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ChatSupportOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ChatSupportOneEvent extends Equatable {}

/// Event that is dispatched when the ChatSupportOne widget is first created.
class ChatSupportOneInitialEvent extends ChatSupportOneEvent {
  @override
  List<Object?> get props => [];
}
