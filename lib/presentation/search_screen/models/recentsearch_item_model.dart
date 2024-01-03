// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';/// This class is used in the [recentsearch_item_widget] screen.
class RecentsearchItemModel extends Equatable {RecentsearchItemModel({this.recentSearch, this.isSelected, }) { recentSearch = recentSearch  ?? "Sunglasses";isSelected = isSelected  ?? false; }

String? recentSearch;

bool? isSelected;

RecentsearchItemModel copyWith({String? recentSearch, bool? isSelected, }) { return RecentsearchItemModel(
recentSearch : recentSearch ?? this.recentSearch,
isSelected : isSelected ?? this.isSelected,
); } 
@override List<Object?> get props => [recentSearch,isSelected];
 }
