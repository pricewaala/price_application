// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';/// This class is used in the [recentsearch4_item_widget] screen.
class Recentsearch4ItemModel extends Equatable {Recentsearch4ItemModel({this.recentSearch, this.isSelected, }) { recentSearch = recentSearch  ?? "Sunglasses";isSelected = isSelected  ?? false; }

String? recentSearch;

bool? isSelected;

Recentsearch4ItemModel copyWith({String? recentSearch, bool? isSelected, }) { return Recentsearch4ItemModel(
recentSearch : recentSearch ?? this.recentSearch,
isSelected : isSelected ?? this.isSelected,
); } 
@override List<Object?> get props => [recentSearch,isSelected];
 }
