import '../../../core/app_export.dart';/// This class is used in the [productcard9_item_widget] screen.
class Productcard9ItemModel {Productcard9ItemModel({this.productImage, this.productName, this.productPrice, this.id, }) { productImage = productImage  ?? ImageConstant.imgMaskGroup;productName = productName  ?? "Turtleneck Sweater ";productPrice = productPrice  ?? " 39.99";id = id  ?? ""; }

String? productImage;

String? productName;

String? productPrice;

String? id;

 }
