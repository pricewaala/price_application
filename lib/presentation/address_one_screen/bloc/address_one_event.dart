// ignore_for_file: must_be_immutable

part of 'address_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AddressOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AddressOneEvent extends Equatable {}

/// Event that is dispatched when the AddressOne widget is first created.
class AddressOneInitialEvent extends AddressOneEvent {
  @override
  List<Object?> get props => [];
}
