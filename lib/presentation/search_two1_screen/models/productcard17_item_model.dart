import '../../../core/app_export.dart';/// This class is used in the [productcard17_item_widget] screen.
class Productcard17ItemModel {Productcard17ItemModel({this.productImage, this.productName, this.productPrice, this.id, }) { productImage = productImage  ?? ImageConstant.imgMaskGroup1;productName = productName  ?? "Lihua Tunic White";productPrice = productPrice  ?? " 53.00";id = id  ?? ""; }

String? productImage;

String? productName;

String? productPrice;

String? id;

 }
