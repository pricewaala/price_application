import '../../../core/app_export.dart';/// This class is used in the [productcardgrid1_item_widget] screen.
class Productcardgrid1ItemModel {Productcardgrid1ItemModel({this.productImage, this.favoriteButton, this.productName, this.productPrice, this.productRatingCount, this.id, }) { productImage = productImage  ?? ImageConstant.imgImage785;favoriteButton = favoriteButton  ?? ImageConstant.imgFavorite;productName = productName  ?? "Knitted Vest Dress";productPrice = productPrice  ?? "85.00";productRatingCount = productRatingCount  ?? "(50)";id = id  ?? ""; }

String? productImage;

String? favoriteButton;

String? productName;

String? productPrice;

String? productRatingCount;

String? id;

 }
