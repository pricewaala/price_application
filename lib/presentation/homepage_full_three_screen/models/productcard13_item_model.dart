import '../../../core/app_export.dart';/// This class is used in the [productcard13_item_widget] screen.
class Productcard13ItemModel {Productcard13ItemModel({this.turtleneckSweater, this.productName, this.productPrice, this.id, }) { turtleneckSweater = turtleneckSweater  ?? ImageConstant.imgMaskGroup;productName = productName  ?? "Turtleneck Sweater ";productPrice = productPrice  ?? " 39.99";id = id  ?? ""; }

String? turtleneckSweater;

String? productName;

String? productPrice;

String? id;

 }
