// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'accessoriescomponent_item_model.dart';/// This class defines the variables used in the [discover_full_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class DiscoverFullModel extends Equatable {DiscoverFullModel({this.accessoriescomponentItemList = const []}) {  }

List<AccessoriescomponentItemModel> accessoriescomponentItemList;

DiscoverFullModel copyWith({List<AccessoriescomponentItemModel>? accessoriescomponentItemList}) { return DiscoverFullModel(
accessoriescomponentItemList : accessoriescomponentItemList ?? this.accessoriescomponentItemList,
); } 
@override List<Object?> get props => [accessoriescomponentItemList];
 }
