// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'shoppingnowframe_item_model.dart';/// This class defines the variables used in the [intro_two_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class IntroTwoOneModel extends Equatable {IntroTwoOneModel({this.shoppingnowframeItemList = const []}) {  }

List<ShoppingnowframeItemModel> shoppingnowframeItemList;

IntroTwoOneModel copyWith({List<ShoppingnowframeItemModel>? shoppingnowframeItemList}) { return IntroTwoOneModel(
shoppingnowframeItemList : shoppingnowframeItemList ?? this.shoppingnowframeItemList,
); } 
@override List<Object?> get props => [shoppingnowframeItemList];
 }
