// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'productcard_item_model.dart';/// This class defines the variables used in the [homepage_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class HomepageModel extends Equatable {HomepageModel({this.productcardItemList = const []}) {  }

List<ProductcardItemModel> productcardItemList;

HomepageModel copyWith({List<ProductcardItemModel>? productcardItemList}) { return HomepageModel(
productcardItemList : productcardItemList ?? this.productcardItemList,
); } 
@override List<Object?> get props => [productcardItemList];
 }
