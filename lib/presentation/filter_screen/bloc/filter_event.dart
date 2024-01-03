// ignore_for_file: must_be_immutable

part of 'filter_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Filter widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class FilterEvent extends Equatable {}

/// Event that is dispatched when the Filter widget is first created.
class FilterInitialEvent extends FilterEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing ChipView selection
class UpdateChipViewEvent extends FilterEvent {
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
class ChangeOTPEvent extends FilterEvent {
  ChangeOTPEvent({required this.code});

  String code;

  @override
  List<Object?> get props => [
        code,
      ];
}

///event for dropdown selection
class ChangeDropDownEvent extends FilterEvent {
  ChangeDropDownEvent({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}
