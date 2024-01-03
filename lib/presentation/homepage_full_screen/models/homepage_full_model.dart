// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'widget_item_model.dart';import 'userprofile_item_model.dart';import 'productcard1_item_model.dart';import 'productcard2_item_model.dart';import 'salebannerlist_item_model.dart';/// This class defines the variables used in the [homepage_full_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class HomepageFullModel extends Equatable {HomepageFullModel({this.widgetItemList = const [], this.userprofileItemList = const [], this.productcard1ItemList = const [], this.productcard2ItemList = const [], this.salebannerlistItemList = const [], }) {  }

List<WidgetItemModel> widgetItemList;

List<UserprofileItemModel> userprofileItemList;

List<Productcard1ItemModel> productcard1ItemList;

List<Productcard2ItemModel> productcard2ItemList;

List<SalebannerlistItemModel> salebannerlistItemList;

HomepageFullModel copyWith({List<WidgetItemModel>? widgetItemList, List<UserprofileItemModel>? userprofileItemList, List<Productcard1ItemModel>? productcard1ItemList, List<Productcard2ItemModel>? productcard2ItemList, List<SalebannerlistItemModel>? salebannerlistItemList, }) { return HomepageFullModel(
widgetItemList : widgetItemList ?? this.widgetItemList,
userprofileItemList : userprofileItemList ?? this.userprofileItemList,
productcard1ItemList : productcard1ItemList ?? this.productcard1ItemList,
productcard2ItemList : productcard2ItemList ?? this.productcard2ItemList,
salebannerlistItemList : salebannerlistItemList ?? this.salebannerlistItemList,
); } 
@override List<Object?> get props => [widgetItemList,userprofileItemList,productcard1ItemList,productcard2ItemList,salebannerlistItemList];
 }
