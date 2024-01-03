// ignore_for_file: must_be_immutable

part of 'check_out_two_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///CheckOutTwoOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class CheckOutTwoOneEvent extends Equatable {}

/// Event that is dispatched when the CheckOutTwoOne widget is first created.
class CheckOutTwoOneInitialEvent extends CheckOutTwoOneEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing checkbox
class ChangeCheckBoxEvent extends CheckOutTwoOneEvent {
  ChangeCheckBoxEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
