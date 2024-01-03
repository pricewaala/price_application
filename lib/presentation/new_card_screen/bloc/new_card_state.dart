// ignore_for_file: must_be_immutable

part of 'new_card_bloc.dart';

/// Represents the state of NewCard in the application.
class NewCardState extends Equatable {
  NewCardState({this.newCardModelObj});

  NewCardModel? newCardModelObj;

  @override
  List<Object?> get props => [
        newCardModelObj,
      ];
  NewCardState copyWith({NewCardModel? newCardModelObj}) {
    return NewCardState(
      newCardModelObj: newCardModelObj ?? this.newCardModelObj,
    );
  }
}
