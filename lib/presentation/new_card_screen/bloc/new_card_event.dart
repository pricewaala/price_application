// ignore_for_file: must_be_immutable

part of 'new_card_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///NewCard widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class NewCardEvent extends Equatable {}

/// Event that is dispatched when the NewCard widget is first created.
class NewCardInitialEvent extends NewCardEvent {
  @override
  List<Object?> get props => [];
}
