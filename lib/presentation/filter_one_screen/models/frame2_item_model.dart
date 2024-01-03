// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';/// This class is used in the [frame2_item_widget] screen.
class Frame2ItemModel extends Equatable {Frame2ItemModel({this.lihuaTunicWhite, this.isSelected, }) { lihuaTunicWhite = lihuaTunicWhite  ?? "Lihua Tunic White";isSelected = isSelected  ?? false; }

String? lihuaTunicWhite;

bool? isSelected;

Frame2ItemModel copyWith({String? lihuaTunicWhite, bool? isSelected, }) { return Frame2ItemModel(
lihuaTunicWhite : lihuaTunicWhite ?? this.lihuaTunicWhite,
isSelected : isSelected ?? this.isSelected,
); } 
@override List<Object?> get props => [lihuaTunicWhite,isSelected];
 }
