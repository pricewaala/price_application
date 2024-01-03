// ignore_for_file: must_be_immutable

part of 'iphone_11_pro_x_twentyone_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Iphone11ProXTwentyone widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class Iphone11ProXTwentyoneEvent extends Equatable {}

/// Event that is dispatched when the Iphone11ProXTwentyone widget is first created.
class Iphone11ProXTwentyoneInitialEvent extends Iphone11ProXTwentyoneEvent {
  @override
  List<Object?> get props => [];
}
