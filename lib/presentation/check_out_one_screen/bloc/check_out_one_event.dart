// ignore_for_file: must_be_immutable

part of 'check_out_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///CheckOutOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class CheckOutOneEvent extends Equatable {}

/// Event that is dispatched when the CheckOutOne widget is first created.
class CheckOutOneInitialEvent extends CheckOutOneEvent {
  @override
  List<Object?> get props => [];
}

///event for dropdown selection
class ChangeDropDownEvent extends CheckOutOneEvent {
  ChangeDropDownEvent({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing checkbox
class ChangeCheckBoxEvent extends CheckOutOneEvent {
  ChangeCheckBoxEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
