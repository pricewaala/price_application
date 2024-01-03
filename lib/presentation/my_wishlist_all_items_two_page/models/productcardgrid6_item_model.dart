import '../../../core/app_export.dart';/// This class is used in the [productcardgrid6_item_widget] screen.
class Productcardgrid6ItemModel {Productcardgrid6ItemModel({this.productImage, this.productName, this.productPrice, this.ratingCount, this.id, }) { productImage = productImage  ?? ImageConstant.imgImage78186x141;productName = productName  ?? "Front Tie Mini Dress";productPrice = productPrice  ?? " 59.00";ratingCount = ratingCount  ?? "(38)";id = id  ?? ""; }

String? productImage;

String? productName;

String? productPrice;

String? ratingCount;

String? id;

 }
