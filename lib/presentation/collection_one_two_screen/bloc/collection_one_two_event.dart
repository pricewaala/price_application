// ignore_for_file: must_be_immutable

part of 'collection_one_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///CollectionOneTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class CollectionOneTwoEvent extends Equatable {}

/// Event that is dispatched when the CollectionOneTwo widget is first created.
class CollectionOneTwoInitialEvent extends CollectionOneTwoEvent {
  @override
  List<Object?> get props => [];
}
