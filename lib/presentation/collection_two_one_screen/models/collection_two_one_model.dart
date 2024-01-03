// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'productcardgrid5_item_model.dart';/// This class defines the variables used in the [collection_two_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class CollectionTwoOneModel extends Equatable {CollectionTwoOneModel({this.productcardgrid5ItemList = const []}) {  }

List<Productcardgrid5ItemModel> productcardgrid5ItemList;

CollectionTwoOneModel copyWith({List<Productcardgrid5ItemModel>? productcardgrid5ItemList}) { return CollectionTwoOneModel(
productcardgrid5ItemList : productcardgrid5ItemList ?? this.productcardgrid5ItemList,
); } 
@override List<Object?> get props => [productcardgrid5ItemList];
 }
