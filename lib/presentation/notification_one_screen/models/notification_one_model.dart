// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'scrollview1_item_model.dart';/// This class defines the variables used in the [notification_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class NotificationOneModel extends Equatable {NotificationOneModel({this.scrollview1ItemList = const []}) {  }

List<Scrollview1ItemModel> scrollview1ItemList;

NotificationOneModel copyWith({List<Scrollview1ItemModel>? scrollview1ItemList}) { return NotificationOneModel(
scrollview1ItemList : scrollview1ItemList ?? this.scrollview1ItemList,
); } 
@override List<Object?> get props => [scrollview1ItemList];
 }
