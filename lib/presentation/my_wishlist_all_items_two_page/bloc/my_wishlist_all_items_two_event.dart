// ignore_for_file: must_be_immutable

part of 'my_wishlist_all_items_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MyWishlistAllItemsTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MyWishlistAllItemsTwoEvent extends Equatable {}

/// Event that is dispatched when the MyWishlistAllItemsTwo widget is first created.
class MyWishlistAllItemsTwoInitialEvent extends MyWishlistAllItemsTwoEvent {
  @override
  List<Object?> get props => [];
}
