// ignore_for_file: must_be_immutable

part of 'collection_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///CollectionTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class CollectionTwoEvent extends Equatable {}

/// Event that is dispatched when the CollectionTwo widget is first created.
class CollectionTwoInitialEvent extends CollectionTwoEvent {
  @override
  List<Object?> get props => [];
}
