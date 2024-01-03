import '../../../core/app_export.dart';/// This class is used in the [productcardgrid3_item_widget] screen.
class Productcardgrid3ItemModel {Productcardgrid3ItemModel({this.productImage, this.favoriteButton, this.titleText, this.priceText, this.discountedPriceText, this.ratingCountText, this.id, }) { productImage = productImage  ?? ImageConstant.imgImage91;favoriteButton = favoriteButton  ?? ImageConstant.imgFavorite;titleText = titleText  ?? "Linen Dress";priceText = priceText  ?? " 52.00";discountedPriceText = discountedPriceText  ?? " 90.00";ratingCountText = ratingCountText  ?? "(64)";id = id  ?? ""; }

String? productImage;

String? favoriteButton;

String? titleText;

String? priceText;

String? discountedPriceText;

String? ratingCountText;

String? id;

 }
