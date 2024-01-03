// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';/// This class is used in the [close2_item_widget] screen.
class Close2ItemModel extends Equatable {Close2ItemModel({this.close, this.isSelected, }) { close = close  ?? "Sunglasses";isSelected = isSelected  ?? false; }

String? close;

bool? isSelected;

Close2ItemModel copyWith({String? close, bool? isSelected, }) { return Close2ItemModel(
close : close ?? this.close,
isSelected : isSelected ?? this.isSelected,
); } 
@override List<Object?> get props => [close,isSelected];
 }
