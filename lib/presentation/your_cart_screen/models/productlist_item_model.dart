import '../../../core/app_export.dart';/// This class is used in the [productlist_item_widget] screen.
class ProductlistItemModel {ProductlistItemModel({this.image, this.title, this.price, this.description, this.quantity, this.text, this.id, }) { image = image  ?? ImageConstant.imgImage87;title = title  ?? "Sportwear Set";price = price  ?? " 80.00";description = description  ?? "Size: L  |  Color: Cream";quantity = quantity  ?? "1";text = text  ?? "+";id = id  ?? ""; }

String? image;

String? title;

String? price;

String? description;

String? quantity;

String? text;

String? id;

 }
