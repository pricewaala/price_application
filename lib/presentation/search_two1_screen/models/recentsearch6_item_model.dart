// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';/// This class is used in the [recentsearch6_item_widget] screen.
class Recentsearch6ItemModel extends Equatable {Recentsearch6ItemModel({this.recentSearch, this.isSelected, }) { recentSearch = recentSearch  ?? "Sunglasses";isSelected = isSelected  ?? false; }

String? recentSearch;

bool? isSelected;

Recentsearch6ItemModel copyWith({String? recentSearch, bool? isSelected, }) { return Recentsearch6ItemModel(
recentSearch : recentSearch ?? this.recentSearch,
isSelected : isSelected ?? this.isSelected,
); } 
@override List<Object?> get props => [recentSearch,isSelected];
 }
