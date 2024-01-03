// ignore_for_file: must_be_immutable

part of 'password_changed_bloc.dart';

/// Represents the state of PasswordChanged in the application.
class PasswordChangedState extends Equatable {
  PasswordChangedState({this.passwordChangedModelObj});

  PasswordChangedModel? passwordChangedModelObj;

  @override
  List<Object?> get props => [
        passwordChangedModelObj,
      ];
  PasswordChangedState copyWith(
      {PasswordChangedModel? passwordChangedModelObj}) {
    return PasswordChangedState(
      passwordChangedModelObj:
          passwordChangedModelObj ?? this.passwordChangedModelObj,
    );
  }
}
