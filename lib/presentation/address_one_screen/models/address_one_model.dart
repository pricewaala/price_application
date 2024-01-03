// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'userprofile16_item_model.dart';/// This class defines the variables used in the [address_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class AddressOneModel extends Equatable {AddressOneModel({this.userprofile16ItemList = const []}) {  }

List<Userprofile16ItemModel> userprofile16ItemList;

AddressOneModel copyWith({List<Userprofile16ItemModel>? userprofile16ItemList}) { return AddressOneModel(
userprofile16ItemList : userprofile16ItemList ?? this.userprofile16ItemList,
); } 
@override List<Object?> get props => [userprofile16ItemList];
 }
