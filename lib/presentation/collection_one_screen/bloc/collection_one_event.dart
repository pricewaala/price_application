// ignore_for_file: must_be_immutable

part of 'collection_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///CollectionOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class CollectionOneEvent extends Equatable {}

/// Event that is dispatched when the CollectionOne widget is first created.
class CollectionOneInitialEvent extends CollectionOneEvent {
  @override
  List<Object?> get props => [];
}
