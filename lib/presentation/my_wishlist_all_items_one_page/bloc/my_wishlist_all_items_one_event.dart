// ignore_for_file: must_be_immutable

part of 'my_wishlist_all_items_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MyWishlistAllItemsOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MyWishlistAllItemsOneEvent extends Equatable {}

/// Event that is dispatched when the MyWishlistAllItemsOne widget is first created.
class MyWishlistAllItemsOneInitialEvent extends MyWishlistAllItemsOneEvent {
  @override
  List<Object?> get props => [];
}
