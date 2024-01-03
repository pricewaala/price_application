// ignore_for_file: must_be_immutable

part of 'verification_code_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///VerificationCodeOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class VerificationCodeOneEvent extends Equatable {}

/// Event that is dispatched when the VerificationCodeOne widget is first created.
class VerificationCodeOneInitialEvent extends VerificationCodeOneEvent {
  @override
  List<Object?> get props => [];
}

///event for OTP auto fill
class ChangeOTPEvent extends VerificationCodeOneEvent {
  ChangeOTPEvent({required this.code});

  String code;

  @override
  List<Object?> get props => [
        code,
      ];
}
