// ignore_for_file: must_be_immutable

part of 'new_card_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///NewCardTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class NewCardTwoEvent extends Equatable {}

/// Event that is dispatched when the NewCardTwo widget is first created.
class NewCardTwoInitialEvent extends NewCardTwoEvent {
  @override
  List<Object?> get props => [];
}
