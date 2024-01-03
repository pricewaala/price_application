import '../../../core/app_export.dart';/// This class is used in the [deliveryoptions_item_widget] screen.
class DeliveryoptionsItemModel {DeliveryoptionsItemModel({this.freeText, this.deliveryText, this.deliveryTimeText, this.id, }) { freeText = freeText  ?? "Free";deliveryText = deliveryText  ?? "Delivery to home";deliveryTimeText = deliveryTimeText  ?? "Delivery from 3 to 7 business days";id = id  ?? ""; }

String? freeText;

String? deliveryText;

String? deliveryTimeText;

String? id;

 }
