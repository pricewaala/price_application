// ignore_for_file: must_be_immutable

part of 'address_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AddressTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AddressTwoEvent extends Equatable {}

/// Event that is dispatched when the AddressTwo widget is first created.
class AddressTwoInitialEvent extends AddressTwoEvent {
  @override
  List<Object?> get props => [];
}
