import '../../../core/app_export.dart';/// This class is used in the [productcard5_item_widget] screen.
class Productcard5ItemModel {Productcard5ItemModel({this.freeText, this.deliveryText, this.deliveryText1, this.id, }) { freeText = freeText  ?? "Free";deliveryText = deliveryText  ?? "Delivery to home";deliveryText1 = deliveryText1  ?? "Delivery from 3 to 7 business days";id = id  ?? ""; }

String? freeText;

String? deliveryText;

String? deliveryText1;

String? id;

 }
