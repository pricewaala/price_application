// ignore_for_file: must_be_immutable

part of 'check_out_two_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///CheckOutTwoTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class CheckOutTwoTwoEvent extends Equatable {}

/// Event that is dispatched when the CheckOutTwoTwo widget is first created.
class CheckOutTwoTwoInitialEvent extends CheckOutTwoTwoEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing checkbox
class ChangeCheckBoxEvent extends CheckOutTwoTwoEvent {
  ChangeCheckBoxEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
