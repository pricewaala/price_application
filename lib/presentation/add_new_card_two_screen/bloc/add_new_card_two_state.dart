// ignore_for_file: must_be_immutable

part of 'add_new_card_two_bloc.dart';

/// Represents the state of AddNewCardTwo in the application.
class AddNewCardTwoState extends Equatable {
  AddNewCardTwoState({
    this.cardNumberController,
    this.nameController,
    this.cvvController,
    this.addNewCardTwoModelObj,
  });

  TextEditingController? cardNumberController;

  TextEditingController? nameController;

  TextEditingController? cvvController;

  AddNewCardTwoModel? addNewCardTwoModelObj;

  @override
  List<Object?> get props => [
        cardNumberController,
        nameController,
        cvvController,
        addNewCardTwoModelObj,
      ];
  AddNewCardTwoState copyWith({
    TextEditingController? cardNumberController,
    TextEditingController? nameController,
    TextEditingController? cvvController,
    AddNewCardTwoModel? addNewCardTwoModelObj,
  }) {
    return AddNewCardTwoState(
      cardNumberController: cardNumberController ?? this.cardNumberController,
      nameController: nameController ?? this.nameController,
      cvvController: cvvController ?? this.cvvController,
      addNewCardTwoModelObj:
          addNewCardTwoModelObj ?? this.addNewCardTwoModelObj,
    );
  }
}
