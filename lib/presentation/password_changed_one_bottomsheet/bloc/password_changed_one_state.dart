// ignore_for_file: must_be_immutable

part of 'password_changed_one_bloc.dart';

/// Represents the state of PasswordChangedOne in the application.
class PasswordChangedOneState extends Equatable {
  PasswordChangedOneState({this.passwordChangedOneModelObj});

  PasswordChangedOneModel? passwordChangedOneModelObj;

  @override
  List<Object?> get props => [
        passwordChangedOneModelObj,
      ];
  PasswordChangedOneState copyWith(
      {PasswordChangedOneModel? passwordChangedOneModelObj}) {
    return PasswordChangedOneState(
      passwordChangedOneModelObj:
          passwordChangedOneModelObj ?? this.passwordChangedOneModelObj,
    );
  }
}
