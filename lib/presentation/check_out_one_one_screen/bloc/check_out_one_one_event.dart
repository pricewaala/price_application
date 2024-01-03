// ignore_for_file: must_be_immutable

part of 'check_out_one_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///CheckOutOneOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class CheckOutOneOneEvent extends Equatable {}

/// Event that is dispatched when the CheckOutOneOne widget is first created.
class CheckOutOneOneInitialEvent extends CheckOutOneOneEvent {
  @override
  List<Object?> get props => [];
}

///event for dropdown selection
class ChangeDropDownEvent extends CheckOutOneOneEvent {
  ChangeDropDownEvent({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing checkbox
class ChangeCheckBoxEvent extends CheckOutOneOneEvent {
  ChangeCheckBoxEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
