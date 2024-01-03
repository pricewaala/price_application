import '../../../core/app_export.dart';/// This class is used in the [productcardgrid2_item_widget] screen.
class Productcardgrid2ItemModel {Productcardgrid2ItemModel({this.productImage, this.title, this.price, this.ratingCount, this.id, }) { productImage = productImage  ?? ImageConstant.imgImage78186x141;title = title  ?? "Front Tie Mini Dress";price = price  ?? " 59.00";ratingCount = ratingCount  ?? "(38)";id = id  ?? ""; }

String? productImage;

String? title;

String? price;

String? ratingCount;

String? id;

 }
