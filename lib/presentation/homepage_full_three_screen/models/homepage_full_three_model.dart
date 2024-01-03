// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'settings_item_model.dart';import 'userprofile12_item_model.dart';import 'productcard13_item_model.dart';import 'productcard14_item_model.dart';import 'banner3_item_model.dart';/// This class defines the variables used in the [homepage_full_three_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class HomepageFullThreeModel extends Equatable {HomepageFullThreeModel({this.settingsItemList = const [], this.userprofile12ItemList = const [], this.productcard13ItemList = const [], this.productcard14ItemList = const [], this.banner3ItemList = const [], }) {  }

List<SettingsItemModel> settingsItemList;

List<Userprofile12ItemModel> userprofile12ItemList;

List<Productcard13ItemModel> productcard13ItemList;

List<Productcard14ItemModel> productcard14ItemList;

List<Banner3ItemModel> banner3ItemList;

HomepageFullThreeModel copyWith({List<SettingsItemModel>? settingsItemList, List<Userprofile12ItemModel>? userprofile12ItemList, List<Productcard13ItemModel>? productcard13ItemList, List<Productcard14ItemModel>? productcard14ItemList, List<Banner3ItemModel>? banner3ItemList, }) { return HomepageFullThreeModel(
settingsItemList : settingsItemList ?? this.settingsItemList,
userprofile12ItemList : userprofile12ItemList ?? this.userprofile12ItemList,
productcard13ItemList : productcard13ItemList ?? this.productcard13ItemList,
productcard14ItemList : productcard14ItemList ?? this.productcard14ItemList,
banner3ItemList : banner3ItemList ?? this.banner3ItemList,
); } 
@override List<Object?> get props => [settingsItemList,userprofile12ItemList,productcard13ItemList,productcard14ItemList,banner3ItemList];
 }
