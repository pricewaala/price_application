// ignore_for_file: must_be_immutable

part of 'log_in_two_bloc.dart';

/// Represents the state of LogInTwo in the application.
class LogInTwoState extends Equatable {
  LogInTwoState({
    this.emailController,
    this.passwordController,
    this.logInTwoModelObj,
  });

  TextEditingController? emailController;

  TextEditingController? passwordController;

  LogInTwoModel? logInTwoModelObj;

  @override
  List<Object?> get props => [
        emailController,
        passwordController,
        logInTwoModelObj,
      ];
  LogInTwoState copyWith({
    TextEditingController? emailController,
    TextEditingController? passwordController,
    LogInTwoModel? logInTwoModelObj,
  }) {
    return LogInTwoState(
      emailController: emailController ?? this.emailController,
      passwordController: passwordController ?? this.passwordController,
      logInTwoModelObj: logInTwoModelObj ?? this.logInTwoModelObj,
    );
  }
}
