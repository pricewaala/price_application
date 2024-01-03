// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'productcardgrid7_item_model.dart';/// This class defines the variables used in the [collection_two_two_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class CollectionTwoTwoModel extends Equatable {CollectionTwoTwoModel({this.productcardgrid7ItemList = const []}) {  }

List<Productcardgrid7ItemModel> productcardgrid7ItemList;

CollectionTwoTwoModel copyWith({List<Productcardgrid7ItemModel>? productcardgrid7ItemList}) { return CollectionTwoTwoModel(
productcardgrid7ItemList : productcardgrid7ItemList ?? this.productcardgrid7ItemList,
); } 
@override List<Object?> get props => [productcardgrid7ItemList];
 }
