// ignore_for_file: must_be_immutable

part of 'your_cart_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///YourCartOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class YourCartOneEvent extends Equatable {}

/// Event that is dispatched when the YourCartOne widget is first created.
class YourCartOneInitialEvent extends YourCartOneEvent {
  @override
  List<Object?> get props => [];
}
