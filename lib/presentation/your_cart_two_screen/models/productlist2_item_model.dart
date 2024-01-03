import '../../../core/app_export.dart';/// This class is used in the [productlist2_item_widget] screen.
class Productlist2ItemModel {Productlist2ItemModel({this.image, this.productName, this.productPrice, this.productDetails, this.quantity, this.plusSign, this.id, }) { image = image  ?? ImageConstant.imgImage87;productName = productName  ?? "Sportwear Set";productPrice = productPrice  ?? " 80.00";productDetails = productDetails  ?? "Size: L  |  Color: Cream";quantity = quantity  ?? "1";plusSign = plusSign  ?? "+";id = id  ?? ""; }

String? image;

String? productName;

String? productPrice;

String? productDetails;

String? quantity;

String? plusSign;

String? id;

 }
