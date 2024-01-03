// ignore_for_file: must_be_immutable

part of 'add_new_card_one_bloc.dart';

/// Represents the state of AddNewCardOne in the application.
class AddNewCardOneState extends Equatable {
  AddNewCardOneState({
    this.cardNumberController,
    this.nameController,
    this.cvvController,
    this.addNewCardOneModelObj,
  });

  TextEditingController? cardNumberController;

  TextEditingController? nameController;

  TextEditingController? cvvController;

  AddNewCardOneModel? addNewCardOneModelObj;

  @override
  List<Object?> get props => [
        cardNumberController,
        nameController,
        cvvController,
        addNewCardOneModelObj,
      ];
  AddNewCardOneState copyWith({
    TextEditingController? cardNumberController,
    TextEditingController? nameController,
    TextEditingController? cvvController,
    AddNewCardOneModel? addNewCardOneModelObj,
  }) {
    return AddNewCardOneState(
      cardNumberController: cardNumberController ?? this.cardNumberController,
      nameController: nameController ?? this.nameController,
      cvvController: cvvController ?? this.cvvController,
      addNewCardOneModelObj:
          addNewCardOneModelObj ?? this.addNewCardOneModelObj,
    );
  }
}
