// ignore_for_file: must_be_immutable
import 'package:equatable/equatable.dart';

/// This class defines the variables used in the [sign_up_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SignUpModel extends Equatable {
 final String name;
 final String email;

 SignUpModel({
  required this.name,
  required this.email,
 });

 SignUpModel.empty()
     : name = '',
      email = '';

 SignUpModel copyWith({
  String? name,
  String? email,
 }) {
  return SignUpModel(
   name: name ?? this.name,
   email: email ?? this.email,
  );
 }

 @override
 List<Object?> get props => [name, email];

 Map<String, dynamic> toMap() {
  return {
   'name': name,
   'email': email,
  };
 }
}
