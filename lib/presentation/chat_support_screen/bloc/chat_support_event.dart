// ignore_for_file: must_be_immutable

part of 'chat_support_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ChatSupport widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ChatSupportEvent extends Equatable {}

/// Event that is dispatched when the ChatSupport widget is first created.
class ChatSupportInitialEvent extends ChatSupportEvent {
  @override
  List<Object?> get props => [];
}
