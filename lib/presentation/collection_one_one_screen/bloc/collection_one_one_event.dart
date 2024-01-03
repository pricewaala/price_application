// ignore_for_file: must_be_immutable

part of 'collection_one_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///CollectionOneOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class CollectionOneOneEvent extends Equatable {}

/// Event that is dispatched when the CollectionOneOne widget is first created.
class CollectionOneOneInitialEvent extends CollectionOneOneEvent {
  @override
  List<Object?> get props => [];
}
