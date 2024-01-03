// ignore_for_file: must_be_immutable

part of 'verification_code_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///VerificationCodeTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class VerificationCodeTwoEvent extends Equatable {}

/// Event that is dispatched when the VerificationCodeTwo widget is first created.
class VerificationCodeTwoInitialEvent extends VerificationCodeTwoEvent {
  @override
  List<Object?> get props => [];
}

///event for OTP auto fill
class ChangeOTPEvent extends VerificationCodeTwoEvent {
  ChangeOTPEvent({required this.code});

  String code;

  @override
  List<Object?> get props => [
        code,
      ];
}
