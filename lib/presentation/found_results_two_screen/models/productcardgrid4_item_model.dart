import '../../../core/app_export.dart';/// This class is used in the [productcardgrid4_item_widget] screen.
class Productcardgrid4ItemModel {Productcardgrid4ItemModel({this.productImage, this.favoriteIcon, this.title, this.price, this.discountedPrice, this.ratingCount, this.id, }) { productImage = productImage  ?? ImageConstant.imgImage91;favoriteIcon = favoriteIcon  ?? ImageConstant.imgFavorite;title = title  ?? "Linen Dress";price = price  ?? " 52.00";discountedPrice = discountedPrice  ?? " 90.00";ratingCount = ratingCount  ?? "(64)";id = id  ?? ""; }

String? productImage;

String? favoriteIcon;

String? title;

String? price;

String? discountedPrice;

String? ratingCount;

String? id;

 }
