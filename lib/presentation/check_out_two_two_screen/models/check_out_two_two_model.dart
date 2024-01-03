// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'userprofile14_item_model.dart';/// This class defines the variables used in the [check_out_two_two_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class CheckOutTwoTwoModel extends Equatable {CheckOutTwoTwoModel({this.userprofile14ItemList = const []}) {  }

List<Userprofile14ItemModel> userprofile14ItemList;

CheckOutTwoTwoModel copyWith({List<Userprofile14ItemModel>? userprofile14ItemList}) { return CheckOutTwoTwoModel(
userprofile14ItemList : userprofile14ItemList ?? this.userprofile14ItemList,
); } 
@override List<Object?> get props => [userprofile14ItemList];
 }
