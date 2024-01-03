// ignore_for_file: must_be_immutable

part of 'log_in_one_bloc.dart';

/// Represents the state of LogInOne in the application.
class LogInOneState extends Equatable {
  LogInOneState({
    this.emailController,
    this.passwordController,
    this.logInOneModelObj,
  });

  TextEditingController? emailController;

  TextEditingController? passwordController;

  LogInOneModel? logInOneModelObj;

  @override
  List<Object?> get props => [
        emailController,
        passwordController,
        logInOneModelObj,
      ];
  LogInOneState copyWith({
    TextEditingController? emailController,
    TextEditingController? passwordController,
    LogInOneModel? logInOneModelObj,
  }) {
    return LogInOneState(
      emailController: emailController ?? this.emailController,
      passwordController: passwordController ?? this.passwordController,
      logInOneModelObj: logInOneModelObj ?? this.logInOneModelObj,
    );
  }
}
