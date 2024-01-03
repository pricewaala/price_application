// ignore_for_file: must_be_immutable

part of 'my_wishlist_all_items_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MyWishlistAllItems widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MyWishlistAllItemsEvent extends Equatable {}

/// Event that is dispatched when the MyWishlistAllItems widget is first created.
class MyWishlistAllItemsInitialEvent extends MyWishlistAllItemsEvent {
  @override
  List<Object?> get props => [];
}
