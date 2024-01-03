// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';/// This class is used in the [signal_item_widget] screen.
class SignalItemModel extends Equatable {SignalItemModel({this.signal, this.isSelected, }) { signal = signal  ?? "1";isSelected = isSelected  ?? false; }

String? signal;

bool? isSelected;

SignalItemModel copyWith({String? signal, bool? isSelected, }) { return SignalItemModel(
signal : signal ?? this.signal,
isSelected : isSelected ?? this.isSelected,
); } 
@override List<Object?> get props => [signal,isSelected];
 }
