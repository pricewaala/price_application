// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';/// This class is used in the [frame_item_widget] screen.
class FrameItemModel extends Equatable {FrameItemModel({this.lihuaTunicWhite, this.isSelected, }) { lihuaTunicWhite = lihuaTunicWhite  ?? "Lihua Tunic White";isSelected = isSelected  ?? false; }

String? lihuaTunicWhite;

bool? isSelected;

FrameItemModel copyWith({String? lihuaTunicWhite, bool? isSelected, }) { return FrameItemModel(
lihuaTunicWhite : lihuaTunicWhite ?? this.lihuaTunicWhite,
isSelected : isSelected ?? this.isSelected,
); } 
@override List<Object?> get props => [lihuaTunicWhite,isSelected];
 }
