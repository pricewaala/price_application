// ignore_for_file: must_be_immutable

part of 'new_card_two_bloc.dart';

/// Represents the state of NewCardTwo in the application.
class NewCardTwoState extends Equatable {
  NewCardTwoState({this.newCardTwoModelObj});

  NewCardTwoModel? newCardTwoModelObj;

  @override
  List<Object?> get props => [
        newCardTwoModelObj,
      ];
  NewCardTwoState copyWith({NewCardTwoModel? newCardTwoModelObj}) {
    return NewCardTwoState(
      newCardTwoModelObj: newCardTwoModelObj ?? this.newCardTwoModelObj,
    );
  }
}
