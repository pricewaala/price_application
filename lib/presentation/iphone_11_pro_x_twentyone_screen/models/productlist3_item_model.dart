import '../../../core/app_export.dart';/// This class is used in the [productlist3_item_widget] screen.
class Productlist3ItemModel {Productlist3ItemModel({this.title, this.subtitle, this.image, this.id, }) { title = title  ?? "SHOES";subtitle = subtitle  ?? "SHOES";image = image  ?? ImageConstant.imgShoes2;id = id  ?? ""; }

String? title;

String? subtitle;

String? image;

String? id;

 }
