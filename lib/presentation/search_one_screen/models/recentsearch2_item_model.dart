// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';/// This class is used in the [recentsearch2_item_widget] screen.
class Recentsearch2ItemModel extends Equatable {Recentsearch2ItemModel({this.recentSearch, this.isSelected, }) { recentSearch = recentSearch  ?? "Sunglasses";isSelected = isSelected  ?? false; }

String? recentSearch;

bool? isSelected;

Recentsearch2ItemModel copyWith({String? recentSearch, bool? isSelected, }) { return Recentsearch2ItemModel(
recentSearch : recentSearch ?? this.recentSearch,
isSelected : isSelected ?? this.isSelected,
); } 
@override List<Object?> get props => [recentSearch,isSelected];
 }
