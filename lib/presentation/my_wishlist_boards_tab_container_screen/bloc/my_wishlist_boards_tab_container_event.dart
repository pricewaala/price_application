// ignore_for_file: must_be_immutable

part of 'my_wishlist_boards_tab_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MyWishlistBoardsTabContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MyWishlistBoardsTabContainerEvent extends Equatable {}

/// Event that is dispatched when the MyWishlistBoardsTabContainer widget is first created.
class MyWishlistBoardsTabContainerInitialEvent
    extends MyWishlistBoardsTabContainerEvent {
  @override
  List<Object?> get props => [];
}
