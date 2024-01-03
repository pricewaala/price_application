// ignore_for_file: must_be_immutable

part of 'my_wishlist_boards_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MyWishlistBoards widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MyWishlistBoardsEvent extends Equatable {}

/// Event that is dispatched when the MyWishlistBoards widget is first created.
class MyWishlistBoardsInitialEvent extends MyWishlistBoardsEvent {
  @override
  List<Object?> get props => [];
}
