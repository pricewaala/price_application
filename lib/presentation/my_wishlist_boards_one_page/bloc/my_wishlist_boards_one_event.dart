// ignore_for_file: must_be_immutable

part of 'my_wishlist_boards_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MyWishlistBoardsOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MyWishlistBoardsOneEvent extends Equatable {}

/// Event that is dispatched when the MyWishlistBoardsOne widget is first created.
class MyWishlistBoardsOneInitialEvent extends MyWishlistBoardsOneEvent {
  @override
  List<Object?> get props => [];
}
