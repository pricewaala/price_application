// ignore_for_file: must_be_immutable

part of 'filter_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///FilterOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class FilterOneEvent extends Equatable {}

/// Event that is dispatched when the FilterOne widget is first created.
class FilterOneInitialEvent extends FilterOneEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing ChipView selection
class UpdateChipViewEvent extends FilterOneEvent {
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

///event for OTP auto fill
class ChangeOTPEvent extends FilterOneEvent {
  ChangeOTPEvent({required this.code});

  String code;

  @override
  List<Object?> get props => [
        code,
      ];
}

///event for dropdown selection
class ChangeDropDownEvent extends FilterOneEvent {
  ChangeDropDownEvent({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}
