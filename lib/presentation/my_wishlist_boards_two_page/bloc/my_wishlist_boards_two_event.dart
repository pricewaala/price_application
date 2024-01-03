// ignore_for_file: must_be_immutable

part of 'my_wishlist_boards_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MyWishlistBoardsTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MyWishlistBoardsTwoEvent extends Equatable {}

/// Event that is dispatched when the MyWishlistBoardsTwo widget is first created.
class MyWishlistBoardsTwoInitialEvent extends MyWishlistBoardsTwoEvent {
  @override
  List<Object?> get props => [];
}
