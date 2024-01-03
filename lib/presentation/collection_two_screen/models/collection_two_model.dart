// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'productcardgrid1_item_model.dart';/// This class defines the variables used in the [collection_two_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class CollectionTwoModel extends Equatable {CollectionTwoModel({this.productcardgrid1ItemList = const []}) {  }

List<Productcardgrid1ItemModel> productcardgrid1ItemList;

CollectionTwoModel copyWith({List<Productcardgrid1ItemModel>? productcardgrid1ItemList}) { return CollectionTwoModel(
productcardgrid1ItemList : productcardgrid1ItemList ?? this.productcardgrid1ItemList,
); } 
@override List<Object?> get props => [productcardgrid1ItemList];
 }
