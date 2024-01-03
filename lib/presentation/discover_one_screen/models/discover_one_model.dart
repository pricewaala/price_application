// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'userprofile13_item_model.dart';/// This class defines the variables used in the [discover_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class DiscoverOneModel extends Equatable {DiscoverOneModel({this.userprofile13ItemList = const []}) {  }

List<Userprofile13ItemModel> userprofile13ItemList;

DiscoverOneModel copyWith({List<Userprofile13ItemModel>? userprofile13ItemList}) { return DiscoverOneModel(
userprofile13ItemList : userprofile13ItemList ?? this.userprofile13ItemList,
); } 
@override List<Object?> get props => [userprofile13ItemList];
 }
