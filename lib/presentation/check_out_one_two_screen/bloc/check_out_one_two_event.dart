// ignore_for_file: must_be_immutable

part of 'check_out_one_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///CheckOutOneTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class CheckOutOneTwoEvent extends Equatable {}

/// Event that is dispatched when the CheckOutOneTwo widget is first created.
class CheckOutOneTwoInitialEvent extends CheckOutOneTwoEvent {
  @override
  List<Object?> get props => [];
}

///event for dropdown selection
class ChangeDropDownEvent extends CheckOutOneTwoEvent {
  ChangeDropDownEvent({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing checkbox
class ChangeCheckBoxEvent extends CheckOutOneTwoEvent {
  ChangeCheckBoxEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
