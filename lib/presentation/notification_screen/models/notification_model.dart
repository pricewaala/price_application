// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'scrollview_item_model.dart';/// This class defines the variables used in the [notification_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class NotificationModel extends Equatable {NotificationModel({this.scrollviewItemList = const []}) {  }

List<ScrollviewItemModel> scrollviewItemList;

NotificationModel copyWith({List<ScrollviewItemModel>? scrollviewItemList}) { return NotificationModel(
scrollviewItemList : scrollviewItemList ?? this.scrollviewItemList,
); } 
@override List<Object?> get props => [scrollviewItemList];
 }
