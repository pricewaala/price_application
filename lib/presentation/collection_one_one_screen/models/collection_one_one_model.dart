// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'collectiononeonestaggered_item_model.dart';/// This class defines the variables used in the [collection_one_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class CollectionOneOneModel extends Equatable {CollectionOneOneModel({this.collectiononeonestaggeredItemList = const []}) {  }

List<CollectiononeonestaggeredItemModel> collectiononeonestaggeredItemList;

CollectionOneOneModel copyWith({List<CollectiononeonestaggeredItemModel>? collectiononeonestaggeredItemList}) { return CollectionOneOneModel(
collectiononeonestaggeredItemList : collectiononeonestaggeredItemList ?? this.collectiononeonestaggeredItemList,
); } 
@override List<Object?> get props => [collectiononeonestaggeredItemList];
 }
