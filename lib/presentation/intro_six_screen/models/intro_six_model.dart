// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'shoppingnowframe1_item_model.dart';/// This class defines the variables used in the [intro_six_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class IntroSixModel extends Equatable {IntroSixModel({this.shoppingnowframe1ItemList = const []}) {  }

List<Shoppingnowframe1ItemModel> shoppingnowframe1ItemList;

IntroSixModel copyWith({List<Shoppingnowframe1ItemModel>? shoppingnowframe1ItemList}) { return IntroSixModel(
shoppingnowframe1ItemList : shoppingnowframe1ItemList ?? this.shoppingnowframe1ItemList,
); } 
@override List<Object?> get props => [shoppingnowframe1ItemList];
 }
