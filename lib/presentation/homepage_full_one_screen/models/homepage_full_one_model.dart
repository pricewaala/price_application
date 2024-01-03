// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'userprofile7_item_model.dart';import 'userprofile8_item_model.dart';import 'productcard9_item_model.dart';import 'productcard10_item_model.dart';import 'salecomponent_item_model.dart';/// This class defines the variables used in the [homepage_full_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class HomepageFullOneModel extends Equatable {HomepageFullOneModel({this.userprofile7ItemList = const [], this.userprofile8ItemList = const [], this.productcard9ItemList = const [], this.productcard10ItemList = const [], this.salecomponentItemList = const [], }) {  }

List<Userprofile7ItemModel> userprofile7ItemList;

List<Userprofile8ItemModel> userprofile8ItemList;

List<Productcard9ItemModel> productcard9ItemList;

List<Productcard10ItemModel> productcard10ItemList;

List<SalecomponentItemModel> salecomponentItemList;

HomepageFullOneModel copyWith({List<Userprofile7ItemModel>? userprofile7ItemList, List<Userprofile8ItemModel>? userprofile8ItemList, List<Productcard9ItemModel>? productcard9ItemList, List<Productcard10ItemModel>? productcard10ItemList, List<SalecomponentItemModel>? salecomponentItemList, }) { return HomepageFullOneModel(
userprofile7ItemList : userprofile7ItemList ?? this.userprofile7ItemList,
userprofile8ItemList : userprofile8ItemList ?? this.userprofile8ItemList,
productcard9ItemList : productcard9ItemList ?? this.productcard9ItemList,
productcard10ItemList : productcard10ItemList ?? this.productcard10ItemList,
salecomponentItemList : salecomponentItemList ?? this.salecomponentItemList,
); } 
@override List<Object?> get props => [userprofile7ItemList,userprofile8ItemList,productcard9ItemList,productcard10ItemList,salecomponentItemList];
 }
