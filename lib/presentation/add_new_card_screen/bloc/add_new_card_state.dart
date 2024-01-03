// ignore_for_file: must_be_immutable

part of 'add_new_card_bloc.dart';

/// Represents the state of AddNewCard in the application.
class AddNewCardState extends Equatable {
  AddNewCardState({
    this.cardNumberController,
    this.nameController,
    this.cvvController,
    this.addNewCardModelObj,
  });

  TextEditingController? cardNumberController;

  TextEditingController? nameController;

  TextEditingController? cvvController;

  AddNewCardModel? addNewCardModelObj;

  @override
  List<Object?> get props => [
        cardNumberController,
        nameController,
        cvvController,
        addNewCardModelObj,
      ];
  AddNewCardState copyWith({
    TextEditingController? cardNumberController,
    TextEditingController? nameController,
    TextEditingController? cvvController,
    AddNewCardModel? addNewCardModelObj,
  }) {
    return AddNewCardState(
      cardNumberController: cardNumberController ?? this.cardNumberController,
      nameController: nameController ?? this.nameController,
      cvvController: cvvController ?? this.cvvController,
      addNewCardModelObj: addNewCardModelObj ?? this.addNewCardModelObj,
    );
  }
}
