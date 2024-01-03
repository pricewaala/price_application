// ignore_for_file: must_be_immutable

part of 'check_out_three_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///CheckOutThreeOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class CheckOutThreeOneEvent extends Equatable {}

/// Event that is dispatched when the CheckOutThreeOne widget is first created.
class CheckOutThreeOneInitialEvent extends CheckOutThreeOneEvent {
  @override
  List<Object?> get props => [];
}
