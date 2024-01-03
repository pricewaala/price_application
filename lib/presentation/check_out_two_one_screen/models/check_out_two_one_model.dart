// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'userprofile10_item_model.dart';import 'userprofile11_item_model.dart';/// This class defines the variables used in the [check_out_two_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class CheckOutTwoOneModel extends Equatable {CheckOutTwoOneModel({this.userprofile10ItemList = const [], this.userprofile11ItemList = const [], }) {  }

List<Userprofile10ItemModel> userprofile10ItemList;

List<Userprofile11ItemModel> userprofile11ItemList;

CheckOutTwoOneModel copyWith({List<Userprofile10ItemModel>? userprofile10ItemList, List<Userprofile11ItemModel>? userprofile11ItemList, }) { return CheckOutTwoOneModel(
userprofile10ItemList : userprofile10ItemList ?? this.userprofile10ItemList,
userprofile11ItemList : userprofile11ItemList ?? this.userprofile11ItemList,
); } 
@override List<Object?> get props => [userprofile10ItemList,userprofile11ItemList];
 }
