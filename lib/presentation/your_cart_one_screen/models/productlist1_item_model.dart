import '../../../core/app_export.dart';/// This class is used in the [productlist1_item_widget] screen.
class Productlist1ItemModel {Productlist1ItemModel({this.image, this.title, this.price, this.sizeColor, this.quantity, this.addButton, this.id, }) { image = image  ?? ImageConstant.imgImage87;title = title  ?? "Sportwear Set";price = price  ?? " 80.00";sizeColor = sizeColor  ?? "Size: L  |  Color: Cream";quantity = quantity  ?? "1";addButton = addButton  ?? "+";id = id  ?? ""; }

String? image;

String? title;

String? price;

String? sizeColor;

String? quantity;

String? addButton;

String? id;

 }
