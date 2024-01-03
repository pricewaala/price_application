// ignore_for_file: must_be_immutable

part of 'new_card_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///NewCardOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class NewCardOneEvent extends Equatable {}

/// Event that is dispatched when the NewCardOne widget is first created.
class NewCardOneInitialEvent extends NewCardOneEvent {
  @override
  List<Object?> get props => [];
}
