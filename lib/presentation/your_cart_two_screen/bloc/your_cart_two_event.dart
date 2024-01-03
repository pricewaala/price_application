// ignore_for_file: must_be_immutable

part of 'your_cart_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///YourCartTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class YourCartTwoEvent extends Equatable {}

/// Event that is dispatched when the YourCartTwo widget is first created.
class YourCartTwoInitialEvent extends YourCartTwoEvent {
  @override
  List<Object?> get props => [];
}
