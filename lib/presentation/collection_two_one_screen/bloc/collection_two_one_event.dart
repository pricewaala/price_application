// ignore_for_file: must_be_immutable

part of 'collection_two_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///CollectionTwoOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class CollectionTwoOneEvent extends Equatable {}

/// Event that is dispatched when the CollectionTwoOne widget is first created.
class CollectionTwoOneInitialEvent extends CollectionTwoOneEvent {
  @override
  List<Object?> get props => [];
}
