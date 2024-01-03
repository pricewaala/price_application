// ignore_for_file: must_be_immutable

part of 'collection_two_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///CollectionTwoTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class CollectionTwoTwoEvent extends Equatable {}

/// Event that is dispatched when the CollectionTwoTwo widget is first created.
class CollectionTwoTwoInitialEvent extends CollectionTwoTwoEvent {
  @override
  List<Object?> get props => [];
}
