// ignore_for_file: must_be_immutable

part of 'check_out_three_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///CheckOutThree widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class CheckOutThreeEvent extends Equatable {}

/// Event that is dispatched when the CheckOutThree widget is first created.
class CheckOutThreeInitialEvent extends CheckOutThreeEvent {
  @override
  List<Object?> get props => [];
}
