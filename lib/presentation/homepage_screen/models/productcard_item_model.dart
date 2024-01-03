import '../../../core/app_export.dart';/// This class is used in the [productcard_item_widget] screen.
class ProductcardItemModel {ProductcardItemModel({this.image, this.title, this.price, this.id, }) { image = image  ?? ImageConstant.imgMaskGroup;title = title  ?? "Turtleneck Sweater ";price = price  ?? " 39.99";id = id  ?? ""; }

String? image;

String? title;

String? price;

String? id;

 }
