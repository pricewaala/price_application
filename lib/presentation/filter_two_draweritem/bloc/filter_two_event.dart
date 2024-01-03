// ignore_for_file: must_be_immutable

part of 'filter_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///FilterTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class FilterTwoEvent extends Equatable {}

/// Event that is dispatched when the FilterTwo widget is first created.
class FilterTwoInitialEvent extends FilterTwoEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing ChipView selection
class UpdateChipViewEvent extends FilterTwoEvent {
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

///event for dropdown selection
class ChangeDropDownEvent extends FilterTwoEvent {
  ChangeDropDownEvent({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}
