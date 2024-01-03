// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';/// This class is used in the [close_item_widget] screen.
class CloseItemModel extends Equatable {CloseItemModel({this.close, this.isSelected, }) { close = close  ?? "Sunglasses";isSelected = isSelected  ?? false; }

String? close;

bool? isSelected;

CloseItemModel copyWith({String? close, bool? isSelected, }) { return CloseItemModel(
close : close ?? this.close,
isSelected : isSelected ?? this.isSelected,
); } 
@override List<Object?> get props => [close,isSelected];
 }
