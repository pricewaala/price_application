// ignore_for_file: must_be_immutable

part of 'new_card_one_bloc.dart';

/// Represents the state of NewCardOne in the application.
class NewCardOneState extends Equatable {
  NewCardOneState({this.newCardOneModelObj});

  NewCardOneModel? newCardOneModelObj;

  @override
  List<Object?> get props => [
        newCardOneModelObj,
      ];
  NewCardOneState copyWith({NewCardOneModel? newCardOneModelObj}) {
    return NewCardOneState(
      newCardOneModelObj: newCardOneModelObj ?? this.newCardOneModelObj,
    );
  }
}
