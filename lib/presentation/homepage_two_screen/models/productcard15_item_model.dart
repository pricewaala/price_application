import '../../../core/app_export.dart';/// This class is used in the [productcard15_item_widget] screen.
class Productcard15ItemModel {Productcard15ItemModel({this.productImage, this.titleText, this.priceText, this.id, }) { productImage = productImage  ?? ImageConstant.imgMaskGroup;titleText = titleText  ?? "Turtleneck Sweater ";priceText = priceText  ?? " 39.99";id = id  ?? ""; }

String? productImage;

String? titleText;

String? priceText;

String? id;

 }
