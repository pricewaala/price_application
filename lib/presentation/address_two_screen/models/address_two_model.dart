// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'userprofile15_item_model.dart';/// This class defines the variables used in the [address_two_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class AddressTwoModel extends Equatable {AddressTwoModel({this.userprofile15ItemList = const []}) {  }

List<Userprofile15ItemModel> userprofile15ItemList;

AddressTwoModel copyWith({List<Userprofile15ItemModel>? userprofile15ItemList}) { return AddressTwoModel(
userprofile15ItemList : userprofile15ItemList ?? this.userprofile15ItemList,
); } 
@override List<Object?> get props => [userprofile15ItemList];
 }
