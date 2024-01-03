// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'collectiononetwostack_item_model.dart';/// This class defines the variables used in the [collection_one_two_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class CollectionOneTwoModel extends Equatable {CollectionOneTwoModel({this.collectiononetwostackItemList = const []}) {  }

List<CollectiononetwostackItemModel> collectiononetwostackItemList;

CollectionOneTwoModel copyWith({List<CollectiononetwostackItemModel>? collectiononetwostackItemList}) { return CollectionOneTwoModel(
collectiononetwostackItemList : collectiononetwostackItemList ?? this.collectiononetwostackItemList,
); } 
@override List<Object?> get props => [collectiononetwostackItemList];
 }
