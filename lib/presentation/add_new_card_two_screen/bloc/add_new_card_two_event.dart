// ignore_for_file: must_be_immutable

part of 'add_new_card_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AddNewCardTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AddNewCardTwoEvent extends Equatable {}

/// Event that is dispatched when the AddNewCardTwo widget is first created.
class AddNewCardTwoInitialEvent extends AddNewCardTwoEvent {
  @override
  List<Object?> get props => [];
}
