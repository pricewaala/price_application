// ignore_for_file: must_be_immutable

part of 'add_new_card_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AddNewCardOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AddNewCardOneEvent extends Equatable {}

/// Event that is dispatched when the AddNewCardOne widget is first created.
class AddNewCardOneInitialEvent extends AddNewCardOneEvent {
  @override
  List<Object?> get props => [];
}
