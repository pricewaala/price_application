// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'productlist4_item_model.dart';/// This class defines the variables used in the [discover_three_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class DiscoverThreeModel extends Equatable {DiscoverThreeModel({this.productlist4ItemList = const []}) {  }

List<Productlist4ItemModel> productlist4ItemList;

DiscoverThreeModel copyWith({List<Productlist4ItemModel>? productlist4ItemList}) { return DiscoverThreeModel(
productlist4ItemList : productlist4ItemList ?? this.productlist4ItemList,
); } 
@override List<Object?> get props => [productlist4ItemList];
 }
