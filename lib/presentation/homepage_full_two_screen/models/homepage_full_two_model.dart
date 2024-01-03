// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'userprofile5_item_model.dart';import 'userprofile6_item_model.dart';import 'productcard6_item_model.dart';import 'productcard7_item_model.dart';import 'homepagefulltwolist_item_model.dart';/// This class defines the variables used in the [homepage_full_two_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class HomepageFullTwoModel extends Equatable {HomepageFullTwoModel({this.userprofile5ItemList = const [], this.userprofile6ItemList = const [], this.productcard6ItemList = const [], this.productcard7ItemList = const [], this.homepagefulltwolistItemList = const [], }) {  }

List<Userprofile5ItemModel> userprofile5ItemList;

List<Userprofile6ItemModel> userprofile6ItemList;

List<Productcard6ItemModel> productcard6ItemList;

List<Productcard7ItemModel> productcard7ItemList;

List<HomepagefulltwolistItemModel> homepagefulltwolistItemList;

HomepageFullTwoModel copyWith({List<Userprofile5ItemModel>? userprofile5ItemList, List<Userprofile6ItemModel>? userprofile6ItemList, List<Productcard6ItemModel>? productcard6ItemList, List<Productcard7ItemModel>? productcard7ItemList, List<HomepagefulltwolistItemModel>? homepagefulltwolistItemList, }) { return HomepageFullTwoModel(
userprofile5ItemList : userprofile5ItemList ?? this.userprofile5ItemList,
userprofile6ItemList : userprofile6ItemList ?? this.userprofile6ItemList,
productcard6ItemList : productcard6ItemList ?? this.productcard6ItemList,
productcard7ItemList : productcard7ItemList ?? this.productcard7ItemList,
homepagefulltwolistItemList : homepagefulltwolistItemList ?? this.homepagefulltwolistItemList,
); } 
@override List<Object?> get props => [userprofile5ItemList,userprofile6ItemList,productcard6ItemList,productcard7ItemList,homepagefulltwolistItemList];
 }
