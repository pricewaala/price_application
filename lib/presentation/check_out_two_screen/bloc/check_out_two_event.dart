// ignore_for_file: must_be_immutable

part of 'check_out_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///CheckOutTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class CheckOutTwoEvent extends Equatable {}

/// Event that is dispatched when the CheckOutTwo widget is first created.
class CheckOutTwoInitialEvent extends CheckOutTwoEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing checkbox
class ChangeCheckBoxEvent extends CheckOutTwoEvent {
  ChangeCheckBoxEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
