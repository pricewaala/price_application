import '../../../core/app_export.dart';/// This class is used in the [productcardgrid_item_widget] screen.
class ProductcardgridItemModel {ProductcardgridItemModel({this.productImage, this.favoriteIcon, this.productName, this.productPrice, this.productDiscountedPrice, this.productRatingCount, this.id, }) { productImage = productImage  ?? ImageConstant.imgImage91;favoriteIcon = favoriteIcon  ?? ImageConstant.imgFavorite;productName = productName  ?? "Linen Dress";productPrice = productPrice  ?? " 52.00";productDiscountedPrice = productDiscountedPrice  ?? " 90.00";productRatingCount = productRatingCount  ?? "(64)";id = id  ?? ""; }

String? productImage;

String? favoriteIcon;

String? productName;

String? productPrice;

String? productDiscountedPrice;

String? productRatingCount;

String? id;

 }
