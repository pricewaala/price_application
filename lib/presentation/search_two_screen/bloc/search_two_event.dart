// ignore_for_file: must_be_immutable

part of 'search_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SearchTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SearchTwoEvent extends Equatable {}

/// Event that is dispatched when the SearchTwo widget is first created.
class SearchTwoInitialEvent extends SearchTwoEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing ChipView selection
class UpdateChipViewEvent extends SearchTwoEvent {
  UpdateChipViewEvent({
    required this.index,
    this.isSelected,
  });

  int index;

  bool? isSelected;

  @override
  List<Object?> get props => [
        index,
        isSelected,
      ];
}
