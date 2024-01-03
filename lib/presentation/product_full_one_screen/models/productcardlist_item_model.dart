import '../../../core/app_export.dart';/// This class is used in the [productcardlist_item_widget] screen.
class ProductcardlistItemModel {ProductcardlistItemModel({this.productImage, this.productName, this.productPrice, this.id, }) { productImage = productImage  ?? ImageConstant.imgMaskGroup4;productName = productName  ?? "Rise Crop Hoodie";productPrice = productPrice  ?? " 43.00";id = id  ?? ""; }

String? productImage;

String? productName;

String? productPrice;

String? id;

 }
