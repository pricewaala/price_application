import '../../../core/app_export.dart';/// This class is used in the [productcardgrid7_item_widget] screen.
class Productcardgrid7ItemModel {Productcardgrid7ItemModel({this.productImage, this.favoriteIcon, this.productName, this.productPrice, this.productRatingCount, this.id, }) { productImage = productImage  ?? ImageConstant.imgImage785;favoriteIcon = favoriteIcon  ?? ImageConstant.imgFavorite;productName = productName  ?? "Knitted Vest Dress";productPrice = productPrice  ?? "85.00";productRatingCount = productRatingCount  ?? "(50)";id = id  ?? ""; }

String? productImage;

String? favoriteIcon;

String? productName;

String? productPrice;

String? productRatingCount;

String? id;

 }
