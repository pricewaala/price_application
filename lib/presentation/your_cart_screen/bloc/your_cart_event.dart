// ignore_for_file: must_be_immutable

part of 'your_cart_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///YourCart widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class YourCartEvent extends Equatable {}

/// Event that is dispatched when the YourCart widget is first created.
class YourCartInitialEvent extends YourCartEvent {
  @override
  List<Object?> get props => [];
}
