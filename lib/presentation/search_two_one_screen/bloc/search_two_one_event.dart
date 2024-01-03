// ignore_for_file: must_be_immutable

part of 'search_two_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SearchTwoOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SearchTwoOneEvent extends Equatable {}

/// Event that is dispatched when the SearchTwoOne widget is first created.
class SearchTwoOneInitialEvent extends SearchTwoOneEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing ChipView selection
class UpdateChipViewEvent extends SearchTwoOneEvent {
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
