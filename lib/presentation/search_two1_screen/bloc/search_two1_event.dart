// ignore_for_file: must_be_immutable

part of 'search_two1_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SearchTwo1 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SearchTwo1Event extends Equatable {}

/// Event that is dispatched when the SearchTwo1 widget is first created.
class SearchTwo1InitialEvent extends SearchTwo1Event {
  @override
  List<Object?> get props => [];
}

///Event for changing ChipView selection
class UpdateChipViewEvent extends SearchTwo1Event {
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
