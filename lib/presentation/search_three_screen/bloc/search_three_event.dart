// ignore_for_file: must_be_immutable

part of 'search_three_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SearchThree widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SearchThreeEvent extends Equatable {}

/// Event that is dispatched when the SearchThree widget is first created.
class SearchThreeInitialEvent extends SearchThreeEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing ChipView selection
class UpdateChipViewEvent extends SearchThreeEvent {
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
